<?php
/**
 * @package     Joomla.Site
 * @subpackage  mod_articles_latest
 *
 * @copyright   Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */
defined('_JEXEC') or die;
?>
<?php if($list): ?>
    <ul class="latestnews<?php echo $moduleclass_sfx; ?>">
        <?php foreach($list as $item) : ?>
            <li itemscope itemtype="http://schema.org/Article">
                <a href="<?php echo $item->link; ?>" itemprop="url">
                    <span itemprop="name"><?php echo $item->title; ?></span></a>
            </li>
        <?php endforeach; ?>
    </ul>
<?php endif; ?>
