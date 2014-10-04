<?php
/**
 * @package     Joomla.Site
 * @subpackage  mod_articles_categories
 *
 * @copyright   Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */
defined('_JEXEC') or die;

foreach($list as $item) :
    ?>
    <li <?php if($_SERVER['PHP_SELF'] == JRoute::_(ContentHelperRoute::getCategoryRoute($item->id))) echo ' class="active"'; ?>> <?php $levelup = $item->level - $startLevel - 1; ?>

        <?php
        if($params->get('show_children', 0) && (($params->get('maxlevel', 0) == 0) || ($params->get('maxlevel') >= ($item->level - $startLevel))) && count($item->getChildren())) {
            $temp = $list;
            $list = $item->getChildren();
            require JModuleHelper::getLayoutPath('mod_articles_categories', $params->get('layout', 'default') . '_items');
            $list = $temp;
        }
        ?>
    </li>
<?php endforeach; ?>
