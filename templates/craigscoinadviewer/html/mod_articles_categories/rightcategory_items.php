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
    $countSubItems = function( $item ) use ( &$countSubItems ) {
        $children = $item->getChildren();
        if(count($children) == 0) {
            return $item->numitems;
        } else {
            $subItems = 0;
            foreach($children as $child) {
                $subItems += $countSubItems($child);
            }
            return $subItems = $item->numitems + $subItems;
        }
    };
    $allItemsInclSubCats = $countSubItems($item);
    ?>
    <li>
        <a href="<?php echo JRoute::_(ContentHelperRoute::getCategoryRoute($item->id)); ?>" title="<?php echo $item->title; ?>">
            <?php if(JString::strlen($item->title) < 35): ?>
                <?= $item->title; ?>
            <?php else: ?>
                <?= JString::substr($item->title, 0, 35) . '...'; ?>
            <?php endif; ?>
            <span class="category-counter">
                <?php if($params->get('numitems')): ?>
                    <?php echo $allItemsInclSubCats; ?>
                <?php endif; ?>
            </span>
        </a>
    </li>
<?php endforeach; ?>
