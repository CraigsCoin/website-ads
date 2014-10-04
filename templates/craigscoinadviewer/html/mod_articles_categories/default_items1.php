<?php
/**
 * @package     Joomla.Site
 * @subpackage  mod_articles_categories
 *
 * @copyright   Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */
defined('_JEXEC') or die;
?>
<ul>
    <?php
    foreach($list as $item) :
        ?>






        <li>
            <a href="<?php echo JRoute::_(ContentHelperRoute::getCategoryRoute($item->id)); ?>" >
                <?php echo $item->title; ?><?php if($params->get('numitems')): ?>
                    <span class="category-counter">(<?php echo $item->numitems; ?>)<?php endif; ?> </span>								</a>
        </li>





    <?php /*
          ?>



          <a href="<?php echo JRoute::_(ContentHelperRoute::getCategoryRoute($item->id)); ?>">
          <li>	<?php echo $item->title;?><?php if($params->get('numitems')): ?>
          (<?php echo $item->numitems; ?>)
          </a> </li>



          <?php */ endforeach; ?>
</ul>