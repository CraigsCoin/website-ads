<?php

set_time_limit(0);
ini_set('error_reporting', E_ALL);
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);

define('_JEXEC', 1);
define('JPATH_BASE', dirname(__FILE__));
define('DS', DIRECTORY_SEPARATOR);
require_once JPATH_BASE . DS . 'includes' . DS . 'defines.php';
require_once JPATH_BASE . DS . 'includes' . DS . 'framework.php';
require_once 'includes/jsonRPCClient.php';
$com_path = JPATH_SITE . '/components/com_content/';
JModelLegacy::addIncludePath($com_path . '/models', 'ContentModel');
$app = JFactory::getApplication('site')->initialise();
$db = JFactory::getDbo();
$last_tx_id = load_last_tx_id();
$db->setQuery("SELECT * FROM abe.tx AS at WHERE at.tx_msg is not null AND at.tx_msg != '' AND at.tx_id > " . $last_tx_id . " ORDER BY tx_id ASC;");
$items = $db->loadObjectList();

foreach($items AS $item) {
    $class_ads = json_decode($item->tx_msg);
    if($class_ads) {
        load_ads($class_ads);
    }
    save_last_tx_id($item->tx_id);
}

function load_ads($data) {
    $level = 1;
    $catid = 8;
    foreach($data->category AS $cat) {
        $catid = addCategory([
            'title' => ucfirst($cat),
            'alias' => JFilterOutput::stringURLSafe(ucfirst($cat)),
            'extension' => 'com_content',
            'path' => JFilterOutput::stringURLSafe(ucfirst($cat)),
            'published' => 1,
            'created_time' => date('Y-m-d H:i:s'),
            'created_user_id' => 657,
            'language' => '*',
            'level' => $level++,
            'parent_id' => $catid,
        ]);
    }

    $ad = $data->ad;
    $ad->description = "<p>" . html_entity_decode($ad->description) . "</p>";
    $dataMinicck = new stdClass();
    $dataMinicck->ad = $ad;
    $dataMinicck->location = $data->location;
    $dataMinicck->person = $data->person;

    addArticle(array(
        'id' => 0,
        'title' => $ad->title,
        'alias' => JFilterOutput::stringURLSafe($ad->title),
        'catid' => $catid, //Идентификатор категории в которой создадим материал
        'state' => 1, //Указываем что материал опубликован
        'introtext' => '',
        'fulltext' => $ad->description,
        'created' => date('Y-m-d H:i:s'),
        'created_by' => 657,
        'language' => '*',
            ), $dataMinicck);
}

function addCategory($data) {
    if($data['title'] === '') {
        return checkArticleCatId($data['parent_id']);
    }
    $db = JFactory::getDbo();
    $db->setQuery("SELECT cat.id FROM #__categories AS cat  WHERE cat.title='$data[title]';");
    $items = $db->loadResult();
    if($items) {
        return $items;
    } else {
        $contentTable = JTable::getInstance('category');
        $contentTable->setLocation($data['parent_id'], 'last-child');
        $contentTable->bind($data);
        if($contentTable->check()) {
            $contentTable->store();
            return (int)$contentTable->id;
        }
    }
}

function load_last_tx_id() {
    $db = JFactory::getDbo();
    $db->setQuery("SELECT lastblock FROM #__lastblock WHERE id=1;");
    $tx_id = $db->loadResult();
    return $tx_id;
}

function save_last_tx_id($tx_id) {
    $db = JFactory::getDbo();
    $db->setQuery("update #__lastblock SET lastblock = '" . $tx_id . "' WHERE id = 1;");
    $db->query();
}

function addArticle($dataContent, $data) {
    $db = JFactory::getDbo();
    $contentTable = new JTableContent($db);
    $contentTable->bind($dataContent);
    if($contentTable->check()) {
        $contentTable->store();
        if($contentTable->id) {
            $data->article_id = $contentTable->id;
            addMinicck($data);
        }
    }
}

function addMinicck($data) {
    $db = JFactory::getDBO();
    $row = new JObject();
    $row->content_id = $data->article_id;
    $row->content_type = 'content_type_0';
    $row->c_street_address = str_replace("\r\n", ' ', trim($data->location->street_address));
    $row->c_postal_code = str_replace("\r\n", ' ', trim($data->location->postal_code));
    $row->c_city = str_replace("\r\n", ' ', trim($data->location->city));
    $row->c_state = str_replace("\r\n", ' ', trim($data->location->state));
    $row->c_country = str_replace("\r\n", ' ', trim($data->location->country));
    $row->c_images = (string) json_encode($data->ad->images);
    $row->c_video = (string) json_encode($data->ad->videos);
    $row->c_persona_name = $data->person->name;
    $row->c_persona_contacts = $data->person->contacts;

    $db->insertObject('#__minicck', $row);
}

function checkArticleCatId($catId) {
    $categories = JCategories::getInstance('Content');
    $cat = $categories->get($catId);
    $children = $cat->getChildren();
    if(empty($children)) {
        $db = JFactory::getDbo();
        $db->setQuery("SELECT cat.id FROM #__categories AS cat  WHERE cat.title='Uncategorised' AND parent_id=$catId;");
        $items = $db->loadResult();
        if($items) {
            $retid = $items;
        } else {
            $data = [
                'title' => ucfirst('uncategorised'),
                'alias' => JFilterOutput::stringURLSafe(ucfirst('uncategorised')),
                'extension' => 'com_content',
                'path' => JFilterOutput::stringURLSafe(ucfirst('uncategorised')),
                'published' => 1,
                'created_time' => date('Y-m-d H:i:s'),
                'created_user_id' => 657,
                'language' => '*',
                'level' => 3,
                'parent_id' => $catId,
            ];
            $contentTable = JTable::getInstance('category');
            $contentTable->setLocation($catId, 'last-child');
            $contentTable->bind($data);
            if($contentTable->check()) {
                $contentTable->store();
                $retid = $contentTable->id;
            }
        }
    } else {
        $retid = $children[0]->id;
    }
    return (int)$retid;
}
