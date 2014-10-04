<?php
/**
 * @package     Joomla.Site
 * @subpackage  com_content
 *
 * @copyright   Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */
defined('_JEXEC') or die;

JHtml::addIncludePath(JPATH_COMPONENT . '/helpers');

JHtml::_('behavior.caption');
?>
<div class="ad-title">
    <h2>
        <?php echo $this->category->title; ?>
    </h2>
</div>
<div class="blog<?php echo $this->pageclass_sfx; ?>" itemscope itemtype="http://schema.org/Blog">
    <?php if($this->params->get('show_page_heading', 1)) : ?>
        <div class="page-header">
            <h1> <?php echo $this->escape($this->params->get('page_heading')); ?> </h1>
        </div>
    <?php endif; ?>

    <?php if($this->params->get('show_description', 1) || $this->params->def('show_description_image', 1)) : ?>
        <div class="category-desc clearfix">
            <?php if($this->params->get('show_description_image') && $this->category->getParams()->get('image')) : ?>
                <img src="<?php echo $this->category->getParams()->get('image'); ?>"/>
            <?php endif; ?>
            <?php if($this->params->get('show_description') && $this->category->description) : ?>
                <?php echo JHtml::_('content.prepare', $this->category->description, '', 'com_content.category'); ?>
            <?php endif; ?>
        </div>
    <?php endif; ?>

    <?php if(empty($this->lead_items) && empty($this->link_items) && empty($this->intro_items)) : ?>
        <?php if($this->params->get('show_no_articles', 1)) : ?>
        <?php endif; ?>
    <?php endif; ?>

    <?php $leadingcount = 0; ?>
    <?php if(!empty($this->items)) : ?>
        <div class="items-leading clearfix">
            <div class="pane latest-ads-holder" style="display: block;">
                <div class="latest-ads-grid-holder">
                    <?php
                    $i = 3;
                    foreach($this->items as &$item) :
                        ?>
                        <?php
                        if($i > 2) {
                            $class = 'first';
                            $i = 1;
                        } else {
                            $class = '';
                            $i++;
                        }
                        $this->item = & $item;
                        $this->item->classCssFirst = $class;
                        echo $this->loadTemplate('item');
                        ?>
                        <?php $leadingcount++; ?>
                    <?php endforeach; ?>
                </div>
            </div>
        </div>
    <?php endif; ?>

    <?php if(!empty($this->link_items)) : ?>
        <div class="items-more">
            <?php echo $this->loadTemplate('links'); ?>
        </div>
    <?php endif; ?>

    <?php if(!empty($this->children[$this->category->id]) && $this->maxLevel != 0) : ?>
        <div class="cat-children">
            <?php if($this->params->get('show_category_heading_title_text', 1) == 1) : ?>
            <?php endif; ?>
            <?php echo $this->loadTemplate('children'); ?> </div>
    <?php endif; ?>
    <?php if(($this->params->def('show_pagination', 1) == 1 || ($this->params->get('show_pagination') == 2)) && ($this->pagination->get('pages.total') > 1)) : ?>
        <div class="pagination">
            <?php if($this->params->def('show_pagination_results', 1)) : ?>
                <p class="counter pull-right"> <?php echo $this->pagination->getPagesCounter(); ?> </p>
            <?php endif; ?>
            <?php echo $this->pagination->getPagesLinks(); ?> </div>
    <?php endif; ?>
</div>
