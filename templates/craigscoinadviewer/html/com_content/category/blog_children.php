<?php
/**
 * @package     Joomla.Site
 * @subpackage  com_content
 *
 * @copyright   Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */
defined('_JEXEC') or die;

JHtml::_('bootstrap.tooltip');

$lang = JFactory::getLanguage();
$class = '';

if(count($this->children[$this->category->id]) > 0 && $this->maxLevel != 0) :
    ?>

    <?php
    $i = 3;
    foreach($this->children[$this->category->id] as $id => $child) :
        ?>
        <?php
        $images = json_decode($child->images);
        if($this->params->get('show_empty_categories') || $child->numitems || count($child->getChildren())) :
            if($i > 2) {
                $class = 'first';
                $i = 1;
            } else {
                $class = '';
                $i++;
            }
            ?>
            <div class="ad-box span3 latest-posts-grid <?= $class ?>">
                <a title="<?= $child->title; ?>" href="<?php echo JRoute::_(ContentHelperRoute::getCategoryRoute($child->id)); ?>" class="ad-image">
                    <?php if($images->image_intro): ?>
                        <img width="270" height="220" alt="<?= $images->image_alt ?>" class="attachment-270x220 wp-post-image" src="<?= $this->template; ?>/<?= $images->image_intro; ?>">
                    <?php else: ?>
                        <img width="270" height="220" alt="No photo" class="attachment-270x220 wp-post-image" src="/images/nophoto.jpg">
                    <?php endif; ?>
                </a>
                <!--<div class="add-price"><span>$1,350</span></div>-->
                <div class="post-title-cat">
                    <div class="ad-category">
                    </div>
                    <div class="post-title">
                        <a href="<?php echo JRoute::_(ContentHelperRoute::getCategoryRoute($child->id)); ?>">
                            <?php if(JString::strlen($child->title) < 35): ?>
                                <?= $child->title; ?>
                            <?php else: ?>
                                <?= JString::substr($child->title, 0, 35) . '...'; ?>
                            <?php endif; ?>
                        </a>
                    </div>
                </div>
            </div>
        <?php endif; ?>
    <?php endforeach; ?>

    <?php


 endif;
