<?php
/**
 * @package     Joomla.Site
 * @subpackage  Layout
 *
 * @copyright   Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */
defined('_JEXEC') or die;

// Create a shortcut for params.
$params = $this->item->params;
JHtml::addIncludePath(JPATH_COMPONENT . '/helpers/html');
$canEdit = $this->item->params->get('access-edit');
$info = $params->get('info_block_position', 0);

$images = json_decode($this->item->minicck->getFieldValue($this->item->id, 'c_images'), true);
?>

<div class="ad-box span3 latest-posts-grid <?= $this->item->classCssFirst; ?>">
    <a title="<?= $this->item->title; ?>" href="<?php echo JRoute::_(ContentHelperRoute::getArticleRoute($this->item->id)); ?>" class="ad-image">
        <?php if(is_array($images) && !empty($images)): ?>
            <img width="236" height="220" alt="" class="attachment-270x220 wp-post-image" src="<?= $images[0] ?>">
        <?php else: ?>
            <img width="236" height="220" alt="No photo" class="attachment-270x220 wp-post-image" src="/images/nophoto.jpg">
        <?php endif; ?>
    </a>
    <!--<div class="add-price"><span>$1,350</span></div>-->
    <div class="post-title-cat">
        <div class="post-title">
            <a href="<?php echo JRoute::_(ContentHelperRoute::getArticleRoute($this->item->id)); ?>">
                <?php if(JString::strlen($this->item->title) < 35): ?>
                    <?= $this->item->title; ?>
                <?php else: ?>
                    <?= JString::substr($this->item->title, 0, 35).'...'; ?>
                <?php endif; ?>
            </a>
        </div>
    </div>
</div>

<?php echo $this->item->event->afterDisplayContent; ?>
