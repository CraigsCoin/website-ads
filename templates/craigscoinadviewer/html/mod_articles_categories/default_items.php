<?php
/**
 * @package     Joomla.Site
 * @subpackage  mod_articles_categories
 *
 * @copyright   Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */
defined('_JEXEC') or die;
$x = -1;
?>

<?php
foreach($list as $item) :
    $x++;
    if($x > 3) {
        $x = 0;
    };
    ?>

    <div class="category-box span3 <?php
    if($x == 0) {
        echo 'first';
    };
    ?>">
        <div class="category-header">
            <div class="cat-title">
                <a href="<?php echo JRoute::_(ContentHelperRoute::getCategoryRoute($item->id)); ?>">
                    <h4><?php echo $item->title; ?></h4>
                </a>
            </div>
        </div>

        <div class="category-content">
            <?php
            if($params->get('show_description', 0)) {
                echo JHtml::_('content.prepare', $item->description, $item->getParams(), 'mod_articles_categories.content');
            }
            if($params->get('show_children', 0) && (($params->get('maxlevel', 0) == 0) || ($params->get('maxlevel') >= ($item->level - $startLevel))) && count($item->getChildren())) {


                $temp = $list;
                $list = $item->getChildren();
                require JModuleHelper::getLayoutPath('mod_articles_categories', $params->get('layout', 'default') . '_items1');
                $list = $temp;
            }
            ?>
        </div>

    </div>
<?php endforeach; ?>

