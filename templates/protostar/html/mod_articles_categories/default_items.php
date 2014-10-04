<?php
/**
 * @package     Joomla.Site
 * @subpackage  mod_articles_categories
 *
 * @copyright   Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;
$x=0;
?>
<div class="row">
<?php
foreach ($list as $item) :
if ($x>2){$x=0; echo '</div><div class="row">';};
$x++;
?>

  <div class="col-md-4">
		<h<?php echo $params->get('item_heading') + $levelup; ?>>
		<!--<a href="<?php echo JRoute::_(ContentHelperRoute::getCategoryRoute($item->id)); ?>">-->
		<?php echo $item->title;?><?php if($params->get('numitems')): ?>
		<?php endif; ?><!-- </a> -->
   		</h<?php echo $params->get('item_heading') + $levelup; ?>>

		<?php
		if ($params->get('show_description', 0))
		{
			echo JHtml::_('content.prepare', $item->description, $item->getParams(), 'mod_articles_categories.content');
		}
		if ($params->get('show_children', 0) && (($params->get('maxlevel', 0) == 0) || ($params->get('maxlevel') >= ($item->level - $startLevel))) && count($item->getChildren()))
		{

		
			$temp = $list;
			$list = $item->getChildren();
			require JModuleHelper::getLayoutPath('mod_articles_categories', $params->get('layout', 'default') . '_items1');
			$list = $temp;
		}
		?>
 </div>
 
<?php endforeach; ?>
</div>
