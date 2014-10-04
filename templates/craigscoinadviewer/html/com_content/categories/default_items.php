<?php
/**
 * @package     Joomla.Site
 * @subpackage  com_content
 *
 * @copyright   Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */
defined('_JEXEC') or die;
$class = '';
JHtml::_('bootstrap.tooltip');
$lang = JFactory::getLanguage();


if(count($this->items[$this->parent->id]) > 0 && $this->maxLevelcat != 0) :
    ?>
    <?php $i = 4;
    foreach($this->items[$this->parent->id] as $id => $item) :
        ?>
        <?php
        if($this->params->get('show_empty_categories_cat') || $item->numitems || count($item->getChildren())) :
            if($i > 3) {
                $class = 'first';
                $i = 1;
            } else {
                $class = '';
                $i++;
            }
            ?>
            <div class="category-box span3 <?= $class; ?>">
                <div class="category-header">
                    <div class="cat-title">
                        <a href="<?php echo JRoute::_(ContentHelperRoute::getCategoryRoute($item->id)); ?>">
                            <h4><?php echo $this->escape($item->title); ?></h4>
                        </a>
                    </div>
                </div>
                <div class="category-content">
                    <ul>
                        <?php if(count($item->getChildren()) > 0) : ?>
                            <?php
                            $this->items[$item->id] = $item->getChildren();
                            $this->parent = $item;
                            $this->maxLevelcat--;
                            echo $this->loadTemplate('items_1');
                            $this->parent = $item->getParent();
                            $this->maxLevelcat++;
                            ?>
                        <?php endif; ?>
                    </ul>
                </div>
            </div>
        <?php endif; ?>
    <?php endforeach; ?>
<?php endif; ?>
