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
foreach ($list as $item) :

?>
	 
		
		<a href="<?php echo JRoute::_(ContentHelperRoute::getCategoryRoute($item->id)); ?>">
	<li>	<?php echo $item->title;?><?php if($params->get('numitems')): ?>
			(<?php echo $item->numitems; ?>)
		<?php endif; ?> </a> </li>
   	

		
 <?php endforeach; ?>
</ul>