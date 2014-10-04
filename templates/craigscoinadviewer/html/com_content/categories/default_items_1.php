<?php
/**
 * @package     Joomla.Site
 * @subpackage  com_content
 *
 * @copyright   Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */
defined('_JEXEC') or die;

$class = ' class="first"';
JHtml::_('bootstrap.tooltip');
$lang = JFactory::getLanguage();
if(count($this->items[$this->parent->id]) > 0 && $this->maxLevelcat != 0) :
    ?>
    <?php foreach($this->items[$this->parent->id] as $id => $item) : ?>
        <li>
            <a title="<?php echo $this->escape($item->title); ?>" href="<?php echo JRoute::_(ContentHelperRoute::getCategoryRoute($item->id)); ?>">
                <?php echo $this->escape($item->title); ?>								</a>
            <span class="category-counter" title="<?php echo JHtml::tooltipText('COM_CONTENT_NUM_ITEMS'); ?>"><?php echo $item->numitems; ?></span>
        </li>
    <?php endforeach; ?>
<?php endif; ?>