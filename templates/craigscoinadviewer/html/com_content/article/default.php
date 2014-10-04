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

// Create shortcuts to some parameters.
$params = $this->item->params;
$images = json_decode($this->item->images);
$urls = json_decode($this->item->urls);
$canEdit = $params->get('access-edit');
$profile = JUserHelper::getProfile($this->item->created_by);
$info = $params->get('info_block_position', 0);
JHtml::_('behavior.caption');
$useDefList = ($params->get('show_modify_date') || $params->get('show_publish_date') || $params->get('show_create_date') || $params->get('show_hits') || $params->get('show_category') || $params->get('show_parent_category') || $params->get('show_author'));
$address = implode(", ", array_filter([
    JString::trim($this->item->minicck->getFieldValue($this->item->id, 'c_city')),
    JString::trim($this->item->minicck->getFieldValue($this->item->id, 'c_state')),
    JString::trim($this->item->minicck->getFieldValue($this->item->id, 'c_street_address')),
    JString::trim($this->item->minicck->getFieldValue($this->item->id, 'c_country'))
        ]));
?>
<div class="ad-title">
    <h2><?php echo $this->escape($this->item->title); ?>
        <span class="ad-page-price">
            <?php $url = '<a href="' . JRoute::_(ContentHelperRoute::getCategoryRoute($this->item->catid)) . '" itemprop="genre">' . $this->item->category_title . '</a>'; ?>
            <?php echo $url; ?>
        </span>
    </h2>
</div>
<style scoped="">.frame {height: 470px;line-height: 470px;overflow: hidden;}</style>
<?php if(JString::trim($this->item->minicck->getFieldValue($this->item->id, 'c_images'))): ?>
    <?php
    $images = json_decode($this->item->minicck->getFieldValue($this->item->id, 'c_images'), true);
    ?>
    <?php if(is_array($images) && !empty($images)): ?>
        <div class="single-slider">
            <div id="basic" class="frame" style="overflow: hidden;">
                <ul class="clearfix" style="transform: translateZ(0px) translateX(0px); width: 1542px;">
                    <?php foreach($images as $image): ?>
                        <li>
                            <a href="<?= $image ?>">
                                <img data-big="<?= $image ?>" src="<?= $image ?>">
                            </a>
                        </li>
                    <?php endforeach; ?>
                </ul>
                <?php if(JString::trim($this->item->minicck->getFieldValue($this->item->id, 'field_1') > 0)): ?>
                    <div class="single-ad-price">
                        $<?= number_format($this->item->minicck->getFieldValue($this->item->id, 'field_1'), 0, ".", ","); ?>
                    </div>
                <?php endif; ?>
            </div>
            <ul class="pages"><li class="active">1</li><li class="">2</li></ul>
            <div class="clearfix"></div>
        </div>
    <?php endif; ?>
<?php endif; ?>
<div class="post-detail">
    <div class="detail-cat clearfix">
        <a title="<?= $this->item->category_title; ?>" href="<?= JRoute::_(ContentHelperRoute::getCategoryRoute($this->item->catid)) ?>">
            <?= $this->item->category_title; ?>
        </a>
    </div>
    <table class="ad-detail-half-box first-half">
        <tbody>
            <tr>
                <td>
                    <?php if(JString::trim($this->item->minicck->getFieldValue($this->item->id, 'c_persona_name'))): ?>
                        <span class="ad-detail-info">Name
                            <span class="ad-detail">
                                <?= $this->item->minicck->getFieldValue($this->item->id, 'c_persona_name'); ?>
                            </span>
                        </span>
                    <?php endif; ?>
                    <?php if(JString::trim($this->item->minicck->getFieldValue($this->item->id, 'c_persona_contacts'))): ?>
                        <span class="ad-detail-info">Contacts
                            <span class="ad-detail">
                                <?= $this->item->minicck->getFieldValue($this->item->id, 'c_persona_contacts'); ?>
                            </span>
                        </span>
                    <?php endif; ?>
                    <?php if(JString::trim($this->item->minicck->getFieldValue($this->item->id, 'field_1'))): ?>
                        <span class="ad-detail-info">Price
                            <span class="ad-detail">
                                <?= $this->item->minicck->getFieldValue($this->item->id, 'field_1'); ?>
                            </span>
                        </span>
                    <?php endif; ?>
                    <?php if(JString::trim($this->item->minicck->getFieldValue($this->item->id, 'c_country'))): ?>
                        <span class="ad-detail-info">Country
                            <span class="ad-detail">
                                <?= $this->item->minicck->getFieldValue($this->item->id, 'c_country'); ?>
                            </span>
                        </span>
                    <?php endif; ?>
                    <?php if(JString::trim($this->item->minicck->getFieldValue($this->item->id, 'c_state'))): ?>
                        <span class="ad-detail-info">State
                            <span class="ad-detail">
                                <?= $this->item->minicck->getFieldValue($this->item->id, 'c_state'); ?>
                            </span>
                        </span>
                    <?php endif; ?>
                    <?php if(JString::trim($this->item->minicck->getFieldValue($this->item->id, 'c_city'))): ?>
                        <span class="ad-detail-info">City
                            <span class="ad-detail">
                                <?= $this->item->minicck->getFieldValue($this->item->id, 'c_city'); ?>
                            </span>
                        </span>
                    <?php endif; ?>
                    <?php if(JString::trim($this->item->minicck->getFieldValue($this->item->id, 'c_street_address'))): ?>
                        <span class="ad-detail-info">Street address
                            <span class="ad-detail">
                                <?= $this->item->minicck->getFieldValue($this->item->id, 'c_street_address'); ?>
                            </span>
                        </span>
                    <?php endif; ?>
                    <?php if(JString::trim($this->item->minicck->getFieldValue($this->item->id, 'c_postal_code'))): ?>
                        <span class="ad-detail-info">Postal code
                            <span class="ad-detail">
                                <?= $this->item->minicck->getFieldValue($this->item->id, 'c_postal_code'); ?>
                            </span>
                        </span>
                    <?php endif; ?>
<!--                    <span class="ad-detail-info">Views
<span class="ad-detail">
                    <?= $this->item->hits; ?>
</span>
</span>-->
<!--                        <span class="ad-detail-info">
Rating
<span class="ad-detail">
<div data-nonce="b8ac26349c" itemtype="http://schema.org/Article" itemscope="" class="post-ratings" id="post-ratings-959">
<img style="cursor: pointer; border: 0px;" onkeypress="rate_post();" onclick="rate_post();" onmouseout="ratings_off(5, 0, 0);" onmouseover="current_rating(959, 1, '1 Star');" title="1 Star" alt="1 Star" src="http://demo.designinvento.net/classiads/wp-content/plugins/wp-postratings/images/stars/rating_on.gif" id="rating_959_1">
<img style="cursor: pointer; border: 0px;" onkeypress="rate_post();" onclick="rate_post();" onmouseout="ratings_off(5, 0, 0);" onmouseover="current_rating(959, 2, '2 Stars');" title="2 Stars" alt="2 Stars" src="http://demo.designinvento.net/classiads/wp-content/plugins/wp-postratings/images/stars/rating_on.gif" id="rating_959_2">
<img style="cursor: pointer; border: 0px;" onkeypress="rate_post();" onclick="rate_post();" onmouseout="ratings_off(5, 0, 0);" onmouseover="current_rating(959, 3, '3 Stars');" title="3 Stars" alt="3 Stars" src="http://demo.designinvento.net/classiads/wp-content/plugins/wp-postratings/images/stars/rating_on.gif" id="rating_959_3">
<img style="cursor: pointer; border: 0px;" onkeypress="rate_post();" onclick="rate_post();" onmouseout="ratings_off(5, 0, 0);" onmouseover="current_rating(959, 4, '4 Stars');" title="4 Stars" alt="4 Stars" src="http://demo.designinvento.net/classiads/wp-content/plugins/wp-postratings/images/stars/rating_on.gif" id="rating_959_4">
<img style="cursor: pointer; border: 0px;" onkeypress="rate_post();" onclick="rate_post();" onmouseout="ratings_off(5, 0, 0);" onmouseover="current_rating(959, 5, '5 Stars');" title="5 Stars" alt="5 Stars" src="http://demo.designinvento.net/classiads/wp-content/plugins/wp-postratings/images/stars/rating_on.gif" id="rating_959_5">
<meta content="Laptop with no scratch" itemprop="name">
<meta content="Morbi accumsan ipsum velit. Nam nec tellus a odio sit tincidunt auctor a ornare odio. Sed non&nbsp; mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent permis ..." itemprop="description">
<meta content="http://demo.designinvento.net/classiads/laptop-with-no-scratch/" itemprop="url">
<div itemtype="http://schema.org/AggregateRating" itemscope="" itemprop="aggregateRating" style="display: none;">
<meta content="5" itemprop="bestRating">
<meta content="5" itemprop="ratingValue">
<meta content="2" itemprop="ratingCount">
</div>
</div>
<div class="post-ratings-loading" id="post-ratings-959-loading">
<img width="16" height="16" class="post-ratings-image" title="Loading ..." alt="Loading ..." src="http://demo.designinvento.net/classiads/wp-content/plugins/wp-postratings/images/loading.gif">
&nbsp;Loading ...
</div>
</span>
</span>-->
                </td>
            </tr>
        </tbody>
    </table>
    <table class="ad-detail-half-box">
        <tbody>
            <tr>
                <td>
                    <div class="ad-detail-info description">
                        <div class="description">DESCRIPTION: </div>
                        <?php echo $this->item->text; ?>
                    </div>
                    <?php if(!empty($this->item->tags->itemTags)) : ?>
                        <div class="ads-tags">
                            <i class="fa fa-tags"></i>
                            <span class="tag-title"><a>Tags:</a></span>
                            <span>
                                <?php $this->item->tagLayout = new JLayoutFile('joomla.content.tags'); ?>
                                <?php echo $this->item->tagLayout->render($this->item->tags->itemTags); ?>
                            </span>
                        </div>
                    <?php endif; ?>
                    <!--                        <div class="social-single">
                                                <a target="_blank" onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=300,width=600');
                                                        return false;" href="https://www.facebook.com/sharer/sharer.php?u=http://demo.designinvento.net/classiads/laptop-with-no-scratch/">
                                                    <img alt="Share on facebook" src="http://demo.designinvento.net/classiads/wp-content/themes/classiads/images/fb-share.png">
                                                </a>
                                                <a target="_blank" onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=300,width=600');
                                                        return false;" href="https://twitter.com/home?status=http://demo.designinvento.net/">
                                                    <img alt="Share on Twitter" src="http://demo.designinvento.net/classiads/wp-content/themes/classiads/images/twitter-share.png">
                                                </a>
                                            </div>-->
                </td>
            </tr>
        </tbody>
    </table>
    <div class="clearfix"></div>
    <div id="single-page-map">

        <div id="single-page-main-map" style="height: 400px; position: relative; overflow: hidden; -webkit-transform: translateZ(0px); background-color: rgb(229, 227, 223);"><div class="gm-style" style="position: absolute; left: 0px; top: 0px; overflow: hidden; width: 100%; height: 100%; z-index: 0;"><div style="position: absolute; left: 0px; top: 0px; overflow: hidden; width: 100%; height: 100%; z-index: 0; cursor: url(https://maps.gstatic.com/mapfiles/openhand_8_8.cur) 8 8, default;"><div style="position: absolute; left: 0px; top: 0px; z-index: 1; width: 100%; transform-origin: 0px 0px 0px; transform: matrix(1, 0, 0, 1, 0, 0);"><div style="-webkit-transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 100; width: 100%;"><div style="position: absolute; left: 0px; top: 0px; z-index: 0;"><div style="position: absolute; left: 0px; top: 0px; z-index: 1;"><div style="width: 256px; height: 256px; -webkit-transform: translateZ(0px); position: absolute; left: 36px; top: 117px;"></div><div style="width: 256px; height: 256px; -webkit-transform: translateZ(0px); position: absolute; left: 292px; top: 117px;"></div><div style="width: 256px; height: 256px; -webkit-transform: translateZ(0px); position: absolute; left: 292px; top: -139px;"></div><div style="width: 256px; height: 256px; -webkit-transform: translateZ(0px); position: absolute; left: 36px; top: -139px;"></div><div style="width: 256px; height: 256px; -webkit-transform: translateZ(0px); position: absolute; left: 36px; top: 373px;"></div><div style="width: 256px; height: 256px; -webkit-transform: translateZ(0px); position: absolute; left: 292px; top: 373px;"></div><div style="width: 256px; height: 256px; -webkit-transform: translateZ(0px); position: absolute; left: -220px; top: 117px;"></div><div style="width: 256px; height: 256px; -webkit-transform: translateZ(0px); position: absolute; left: 548px; top: 117px;"></div><div style="width: 256px; height: 256px; -webkit-transform: translateZ(0px); position: absolute; left: -220px; top: 373px;"></div><div style="width: 256px; height: 256px; -webkit-transform: translateZ(0px); position: absolute; left: 548px; top: -139px;"></div><div style="width: 256px; height: 256px; -webkit-transform: translateZ(0px); position: absolute; left: -220px; top: -139px;"></div><div style="width: 256px; height: 256px; -webkit-transform: translateZ(0px); position: absolute; left: 548px; top: 373px;"></div></div></div></div><div style="-webkit-transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 101; width: 100%;"></div><div style="-webkit-transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 102; width: 100%;"></div><div style="-webkit-transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 103; width: 100%;"><div style="position: absolute; left: 0px; top: 0px; z-index: -1;"><div style="position: absolute; left: 0px; top: 0px; z-index: 1;"><div style="width: 256px; height: 256px; overflow: hidden; -webkit-transform: translateZ(0px); position: absolute; left: 36px; top: 117px;"></div><div style="width: 256px; height: 256px; overflow: hidden; -webkit-transform: translateZ(0px); position: absolute; left: 292px; top: 117px;"><canvas draggable="false" height="256" width="256" style="-webkit-user-select: none; position: absolute; left: 0px; top: 0px; height: 256px; width: 256px;"></canvas></div><div style="width: 256px; height: 256px; overflow: hidden; -webkit-transform: translateZ(0px); position: absolute; left: 292px; top: -139px;"><canvas draggable="false" height="256" width="256" style="-webkit-user-select: none; position: absolute; left: 0px; top: 0px; height: 256px; width: 256px;"></canvas></div><div style="width: 256px; height: 256px; overflow: hidden; -webkit-transform: translateZ(0px); position: absolute; left: 36px; top: -139px;"></div><div style="width: 256px; height: 256px; overflow: hidden; -webkit-transform: translateZ(0px); position: absolute; left: 36px; top: 373px;"></div><div style="width: 256px; height: 256px; overflow: hidden; -webkit-transform: translateZ(0px); position: absolute; left: 292px; top: 373px;"></div><div style="width: 256px; height: 256px; overflow: hidden; -webkit-transform: translateZ(0px); position: absolute; left: -220px; top: 117px;"></div><div style="width: 256px; height: 256px; overflow: hidden; -webkit-transform: translateZ(0px); position: absolute; left: 548px; top: 117px;"></div><div style="width: 256px; height: 256px; overflow: hidden; -webkit-transform: translateZ(0px); position: absolute; left: -220px; top: 373px;"></div><div style="width: 256px; height: 256px; overflow: hidden; -webkit-transform: translateZ(0px); position: absolute; left: 548px; top: -139px;"></div><div style="width: 256px; height: 256px; overflow: hidden; -webkit-transform: translateZ(0px); position: absolute; left: -220px; top: -139px;"></div><div style="width: 256px; height: 256px; overflow: hidden; -webkit-transform: translateZ(0px); position: absolute; left: 548px; top: 373px;"></div></div></div></div><div style="position: absolute; z-index: 0; left: 0px; top: 0px;"><div style="overflow: hidden; width: 718px; height: 400px;"><img src="https://maps.googleapis.com/maps/api/js/StaticMapService.GetMapImage?1m2&amp;1i4751580&amp;2i6213771&amp;2e1&amp;3u16&amp;4m2&amp;1u718&amp;2u400&amp;5m6&amp;1e0&amp;5sru-RU&amp;6sus&amp;10b1&amp;11b1&amp;12b1&amp;token=37549" style="width: 718px; height: 400px;"></div></div><div style="position: absolute; left: 0px; top: 0px; z-index: 0;"><div style="position: absolute; left: 0px; top: 0px; z-index: 1;"><div style="width: 256px; height: 256px; -webkit-transform: translateZ(0px); position: absolute; left: 292px; top: 373px; opacity: 1; transition: opacity 200ms ease-out; -webkit-transition: opacity 200ms ease-out;"><img src="https://mts0.googleapis.com/vt?pb=!1m4!1m3!1i16!2i18562!3i24274!2m3!1e0!2sm!3i275120687!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0!20m1!1b1" draggable="false" style="width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; -webkit-transform: translateZ(0px);"></div><div style="width: 256px; height: 256px; -webkit-transform: translateZ(0px); position: absolute; left: 292px; top: 117px; opacity: 1; transition: opacity 200ms ease-out; -webkit-transition: opacity 200ms ease-out;"><img src="https://mts0.googleapis.com/vt?pb=!1m4!1m3!1i16!2i18562!3i24273!2m3!1e0!2sm!3i275120687!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0!20m1!1b1" draggable="false" style="width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; -webkit-transform: translateZ(0px);"></div><div style="width: 256px; height: 256px; -webkit-transform: translateZ(0px); position: absolute; left: 292px; top: -139px; opacity: 1; transition: opacity 200ms ease-out; -webkit-transition: opacity 200ms ease-out;"><img src="https://mts0.googleapis.com/vt?pb=!1m4!1m3!1i16!2i18562!3i24272!2m3!1e0!2sm!3i275091728!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0!20m1!1b1" draggable="false" style="width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; -webkit-transform: translateZ(0px);"></div><div style="width: 256px; height: 256px; -webkit-transform: translateZ(0px); position: absolute; left: 36px; top: 373px; opacity: 1; transition: opacity 200ms ease-out; -webkit-transition: opacity 200ms ease-out;"><img src="https://mts1.googleapis.com/vt?pb=!1m4!1m3!1i16!2i18561!3i24274!2m3!1e0!2sm!3i275120687!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0!20m1!1b1" draggable="false" style="width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; -webkit-transform: translateZ(0px);"></div><div style="width: 256px; height: 256px; -webkit-transform: translateZ(0px); position: absolute; left: 36px; top: 117px; opacity: 1; transition: opacity 200ms ease-out; -webkit-transition: opacity 200ms ease-out;"><img src="https://mts1.googleapis.com/vt?pb=!1m4!1m3!1i16!2i18561!3i24273!2m3!1e0!2sm!3i275120687!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0!20m1!1b1" draggable="false" style="width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; -webkit-transform: translateZ(0px);"></div><div style="width: 256px; height: 256px; -webkit-transform: translateZ(0px); position: absolute; left: 36px; top: -139px; opacity: 1; transition: opacity 200ms ease-out; -webkit-transition: opacity 200ms ease-out;"><img src="https://mts1.googleapis.com/vt?pb=!1m4!1m3!1i16!2i18561!3i24272!2m3!1e0!2sm!3i275091728!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0!20m1!1b1" draggable="false" style="width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; -webkit-transform: translateZ(0px);"></div><div style="width: 256px; height: 256px; -webkit-transform: translateZ(0px); position: absolute; left: -220px; top: 373px; opacity: 1; transition: opacity 200ms ease-out; -webkit-transition: opacity 200ms ease-out;"><img src="https://mts0.googleapis.com/vt?pb=!1m4!1m3!1i16!2i18560!3i24274!2m3!1e0!2sm!3i275000000!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0!20m1!1b1" draggable="false" style="width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; -webkit-transform: translateZ(0px);"></div><div style="width: 256px; height: 256px; -webkit-transform: translateZ(0px); position: absolute; left: -220px; top: 117px; opacity: 1; transition: opacity 200ms ease-out; -webkit-transition: opacity 200ms ease-out;"><img src="https://mts0.googleapis.com/vt?pb=!1m4!1m3!1i16!2i18560!3i24273!2m3!1e0!2sm!3i275000000!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0!20m1!1b1" draggable="false" style="width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; -webkit-transform: translateZ(0px);"></div><div style="width: 256px; height: 256px; -webkit-transform: translateZ(0px); position: absolute; left: -220px; top: -139px; opacity: 1; transition: opacity 200ms ease-out; -webkit-transition: opacity 200ms ease-out;"><img src="https://mts0.googleapis.com/vt?pb=!1m4!1m3!1i16!2i18560!3i24272!2m3!1e0!2sm!3i275000000!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0!20m1!1b1" draggable="false" style="width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; -webkit-transform: translateZ(0px);"></div><div style="width: 256px; height: 256px; -webkit-transform: translateZ(0px); position: absolute; left: 548px; top: -139px; opacity: 1; transition: opacity 200ms ease-out; -webkit-transition: opacity 200ms ease-out;"><img src="https://mts1.googleapis.com/vt?pb=!1m4!1m3!1i16!2i18563!3i24272!2m3!1e0!2sm!3i275091728!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0!20m1!1b1" draggable="false" style="width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; -webkit-transform: translateZ(0px);"></div><div style="width: 256px; height: 256px; -webkit-transform: translateZ(0px); position: absolute; left: 548px; top: 373px; opacity: 1; transition: opacity 200ms ease-out; -webkit-transition: opacity 200ms ease-out;"><img src="https://mts1.googleapis.com/vt?pb=!1m4!1m3!1i16!2i18563!3i24274!2m3!1e0!2sm!3i275120687!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0!20m1!1b1" draggable="false" style="width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; -webkit-transform: translateZ(0px);"></div><div style="width: 256px; height: 256px; -webkit-transform: translateZ(0px); position: absolute; left: 548px; top: 117px; opacity: 1; transition: opacity 200ms ease-out; -webkit-transition: opacity 200ms ease-out;"><img src="https://mts1.googleapis.com/vt?pb=!1m4!1m3!1i16!2i18563!3i24273!2m3!1e0!2sm!3i275120687!3m9!2sru-RU!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0!20m1!1b1" draggable="false" style="width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; -webkit-transform: translateZ(0px);"></div></div></div></div><div style="position: absolute; left: 0px; top: 0px; z-index: 2; width: 100%; height: 100%;"></div><div style="position: absolute; left: 0px; top: 0px; z-index: 3; width: 100%; transform-origin: 0px 0px 0px; transform: matrix(1, 0, 0, 1, 0, 0);"><div style="-webkit-transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 104; width: 100%;"></div><div style="-webkit-transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 105; width: 100%;"></div><div style="-webkit-transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 106; width: 100%;"></div><div style="-webkit-transform: translateZ(0px); position: absolute; left: 0px; top: 0px; z-index: 107; width: 100%;"></div></div></div><div style="margin-left: 5px; margin-right: 5px; z-index: 1000000; position: absolute; left: 0px; bottom: 0px;"><a target="_blank" href="http://maps.google.com/maps?ll=42.223124,-78.034451&amp;z=16&amp;t=m&amp;hl=ru-RU&amp;gl=US&amp;mapclient=apiv3" title="Нажмите, чтобы отобразить эту область в Картах Google" style="position: static; overflow: visible; float: none; display: inline;"><div style="width: 62px; height: 26px; cursor: pointer;"><img src="https://maps.gstatic.com/mapfiles/api-3/images/google_white2.png" draggable="false" style="position: absolute; left: 0px; top: 0px; width: 62px; height: 26px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;"></div></a></div><div class="gmnoprint" style="z-index: 1000001; position: absolute; right: 366px; bottom: 0px; width: 210px;"><div draggable="false" class="gm-style-cc" style="-webkit-user-select: none;"><div style="opacity: 0.7; width: 100%; height: 100%; position: absolute;"><div style="width: 1px;"></div><div style="width: auto; height: 100%; margin-left: 1px; background-color: rgb(245, 245, 245);"></div></div><div style="position: relative; padding-right: 6px; padding-left: 6px; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right;"><a style="color: rgb(68, 68, 68); text-decoration: none; cursor: pointer; display: none;">Картографические данные</a><span>Картографические данные © 2014 Google</span></div></div></div><div style="padding: 15px 21px; border: 1px solid rgb(171, 171, 171); font-family: Roboto, Arial, sans-serif; color: rgb(34, 34, 34); -webkit-box-shadow: rgba(0, 0, 0, 0.2) 0px 4px 16px; box-shadow: rgba(0, 0, 0, 0.2) 0px 4px 16px; z-index: 10000002; display: none; width: 256px; height: 148px; position: absolute; left: 209px; top: 110px; background-color: white;"><div style="padding: 0px 0px 10px; font-size: 16px;">Картографические данные</div><div style="font-size: 13px;">Картографические данные © 2014 Google</div><div style="width: 13px; height: 13px; overflow: hidden; position: absolute; opacity: 0.7; right: 12px; top: 12px; z-index: 10000; cursor: pointer;"><img src="https://maps.gstatic.com/mapfiles/api-3/images/mapcnt3.png" draggable="false" style="position: absolute; left: -2px; top: -336px; width: 59px; height: 492px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;"></div></div><div class="gmnoscreen" style="position: absolute; right: 0px; bottom: 0px;"><div style="font-family: Roboto, Arial, sans-serif; font-size: 11px; color: rgb(68, 68, 68); direction: ltr; text-align: right; background-color: rgb(245, 245, 245);">Картографические данные © 2014 Google</div></div><div class="gmnoprint gm-style-cc" draggable="false" style="z-index: 1000001; position: absolute; -webkit-user-select: none; right: 155px; bottom: 0px;"><div style="opacity: 0.7; width: 100%; height: 100%; position: absolute;"><div style="width: 1px;"></div><div style="width: auto; height: 100%; margin-left: 1px; background-color: rgb(245, 245, 245);"></div></div><div style="position: relative; padding-right: 6px; padding-left: 6px; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right;"><a href="http://www.google.com/intl/ru-RU_US/help/terms_maps.html" target="_blank" style="text-decoration: none; cursor: pointer; color: rgb(68, 68, 68);">Условия использования</a></div></div><div draggable="false" class="gm-style-cc" style="-webkit-user-select: none; position: absolute; right: 0px; bottom: 0px;"><div style="opacity: 0.7; width: 100%; height: 100%; position: absolute;"><div style="width: 1px;"></div><div style="width: auto; height: 100%; margin-left: 1px; background-color: rgb(245, 245, 245);"></div></div><div style="position: relative; padding-right: 6px; padding-left: 6px; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right;"><a target="_new" title="Сообщить об ошибке на карте или снимке" href="http://maps.google.com/maps?ll=42.223124,-78.034451&amp;z=16&amp;t=m&amp;hl=ru-RU&amp;gl=US&amp;mapclient=apiv3&amp;skstate=action:mps_dialog$apiref:1&amp;output=classic" style="font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); text-decoration: none; position: relative;">Сообщить об ошибке на карте</a></div></div><div class="gmnoprint" draggable="false" controlwidth="78" controlheight="356" style="margin: 5px; -webkit-user-select: none; position: absolute; left: 0px; top: 0px;"><div class="gmnoprint" controlwidth="78" controlheight="80" style="cursor: url(https://maps.gstatic.com/mapfiles/openhand_8_8.cur) 8 8, default; width: 78px; height: 78px; position: absolute; left: 0px; top: 0px;"><div class="gmnoprint" controlwidth="78" controlheight="80" style="width: 78px; height: 78px; position: absolute; left: 0px; top: 0px;"><div style="visibility: hidden;"><svg version="1.1" overflow="hidden" width="78px" height="78px" viewBox="0 0 78 78" style="position: absolute; left: 0px; top: 0px;"><circle cx="39" cy="39" r="35" stroke-width="3" fill-opacity="0.2" fill="#f2f4f6" stroke="#f2f4f6"></circle><g transform="rotate(0 39 39)"><rect x="33" y="0" rx="4" ry="4" width="12" height="11" stroke="#a6a6a6" stroke-width="1" fill="#f2f4f6"></rect><polyline points="36.5,8.5 36.5,2.5 41.5,8.5 41.5,2.5" stroke-linejoin="bevel" stroke-width="1.5" fill="#f2f4f6" stroke="#000"></polyline></g></svg></div></div><div class="gmnoprint" controlwidth="59" controlheight="59" style="position: absolute; left: 10px; top: 11px;"><div style="width: 59px; height: 59px; overflow: hidden; position: relative;"><img src="https://maps.gstatic.com/mapfiles/api-3/images/mapcnt3.png" draggable="false" style="position: absolute; left: 0px; top: 0px; width: 59px; height: 492px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;"><div title="Панорамировать влево" style="position: absolute; left: 0px; top: 20px; width: 19.6666666666667px; height: 19.6666666666667px; cursor: pointer;"></div><div title="Панорамировать вправо" style="position: absolute; left: 39px; top: 20px; width: 19.6666666666667px; height: 19.6666666666667px; cursor: pointer;"></div><div title="Панорамировать вверх" style="position: absolute; left: 20px; top: 0px; width: 19.6666666666667px; height: 19.6666666666667px; cursor: pointer;"></div><div title="Панорамировать вниз" style="position: absolute; left: 20px; top: 39px; width: 19.6666666666667px; height: 19.6666666666667px; cursor: pointer;"></div></div></div></div><div controlwidth="32" controlheight="40" style="cursor: url(https://maps.gstatic.com/mapfiles/openhand_8_8.cur) 8 8, default; position: absolute; left: 23px; top: 85px;"><div style="width: 32px; height: 40px; overflow: hidden; position: absolute; left: 0px; top: 0px;"><img src="https://maps.gstatic.com/mapfiles/api-3/images/cb_scout2.png" draggable="false" style="position: absolute; left: -9px; top: -102px; width: 1028px; height: 214px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;"></div><div style="width: 32px; height: 40px; overflow: hidden; position: absolute; left: 0px; top: 0px; visibility: hidden;"><img src="https://maps.gstatic.com/mapfiles/api-3/images/cb_scout2.png" draggable="false" style="position: absolute; left: -107px; top: -102px; width: 1028px; height: 214px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;"></div><div style="width: 32px; height: 40px; overflow: hidden; position: absolute; left: 0px; top: 0px; visibility: hidden;"><img src="https://maps.gstatic.com/mapfiles/api-3/images/cb_scout2.png" draggable="false" style="position: absolute; left: -58px; top: -102px; width: 1028px; height: 214px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;"></div><div style="width: 32px; height: 40px; overflow: hidden; position: absolute; left: 0px; top: 0px; visibility: hidden;"><img src="https://maps.gstatic.com/mapfiles/api-3/images/cb_scout2.png" draggable="false" style="position: absolute; left: -205px; top: -102px; width: 1028px; height: 214px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;"></div></div><div class="gmnoprint" controlwidth="25" controlheight="226" style="position: absolute; left: 27px; top: 130px;"><div title="Увеличить" style="width: 23px; height: 24px; overflow: hidden; position: relative; cursor: pointer; z-index: 1;"><img src="https://maps.gstatic.com/mapfiles/api-3/images/mapcnt3.png" draggable="false" style="position: absolute; left: -17px; top: -400px; width: 59px; height: 492px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;"></div><div title="Нажмите для изменения масштаба" style="width: 25px; height: 178px; overflow: hidden; position: relative; cursor: pointer; top: -4px;"><img src="https://maps.gstatic.com/mapfiles/api-3/images/mapcnt3.png" draggable="false" style="position: absolute; left: -17px; top: -87px; width: 59px; height: 492px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;"></div><div title="Перетащить для изменения масштаба" style="width: 21px; height: 14px; overflow: hidden; position: absolute; -webkit-transition: top 0.25s ease; transition: top 0.25s ease; z-index: 2; cursor: url(https://maps.gstatic.com/mapfiles/openhand_8_8.cur) 8 8, default; left: 2px; top: 60px;"><img src="https://maps.gstatic.com/mapfiles/api-3/images/mapcnt3.png" draggable="false" style="position: absolute; left: 0px; top: -384px; width: 59px; height: 492px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;"></div><div title="Уменьшить" style="width: 23px; height: 23px; overflow: hidden; position: relative; cursor: pointer; top: -4px; z-index: 3;"><img src="https://maps.gstatic.com/mapfiles/api-3/images/mapcnt3.png" draggable="false" style="position: absolute; left: -17px; top: -361px; width: 59px; height: 492px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;"></div></div></div><div class="gmnoprint" style="margin: 5px; z-index: 0; position: absolute; cursor: pointer; right: 0px; top: 0px;"><div class="gm-style-mtc" style="float: left;"><div draggable="false" title="Показать карту с названиями объектов" style="direction: ltr; overflow: hidden; text-align: center; position: relative; color: rgb(0, 0, 0); font-family: Roboto, Arial, sans-serif; -webkit-user-select: none; font-size: 11px; padding: 1px 6px; border-bottom-left-radius: 2px; border-top-left-radius: 2px; -webkit-background-clip: padding-box; border: 1px solid rgba(0, 0, 0, 0.14902); -webkit-box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; min-width: 33px; font-weight: 500; background-color: rgb(255, 255, 255); background-clip: padding-box;">Карта</div><div style="z-index: -1; padding-top: 2px; -webkit-background-clip: padding-box; border-width: 0px 1px 1px; border-right-style: solid; border-bottom-style: solid; border-left-style: solid; border-right-color: rgba(0, 0, 0, 0.14902); border-bottom-color: rgba(0, 0, 0, 0.14902); border-left-color: rgba(0, 0, 0, 0.14902); -webkit-box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; position: absolute; left: 0px; top: 28px; text-align: left; display: none; background-color: white; background-clip: padding-box;"><div draggable="false" title="Чтобы показать карту рельефа с названиями объектов, уменьшите масштаб." style="color: rgb(184, 184, 184); font-family: Roboto, Arial, sans-serif; -webkit-user-select: none; font-size: 11px; padding: 3px 8px 3px 3px; direction: ltr; text-align: left; white-space: nowrap; background-color: rgb(255, 255, 255);"><span role="checkbox" style="box-sizing: border-box; position: relative; line-height: 0; font-size: 0px; margin: 0px 5px 0px 0px; display: inline-block; border: 1px solid rgb(241, 241, 241); border-top-left-radius: 1px; border-top-right-radius: 1px; border-bottom-right-radius: 1px; border-bottom-left-radius: 1px; width: 13px; height: 13px; vertical-align: middle; background-color: rgb(255, 255, 255);"><div style="position: absolute; left: 1px; top: -2px; width: 13px; height: 11px; overflow: hidden; display: none;"><img src="https://maps.gstatic.com/mapfiles/mv/imgs8.png" draggable="false" style="position: absolute; left: -52px; top: -44px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; width: 68px; height: 67px;"></div></span><label style="vertical-align: middle; cursor: pointer;">Рельеф</label></div></div></div><div class="gm-style-mtc" style="float: left;"><div draggable="false" title="Показать спутниковую карту" style="direction: ltr; overflow: hidden; text-align: center; position: relative; color: rgb(86, 86, 86); font-family: Roboto, Arial, sans-serif; -webkit-user-select: none; font-size: 11px; padding: 1px 6px; border-bottom-right-radius: 2px; border-top-right-radius: 2px; -webkit-background-clip: padding-box; border-width: 1px 1px 1px 0px; border-top-style: solid; border-right-style: solid; border-bottom-style: solid; border-top-color: rgba(0, 0, 0, 0.14902); border-right-color: rgba(0, 0, 0, 0.14902); border-bottom-color: rgba(0, 0, 0, 0.14902); -webkit-box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; min-width: 44px; background-color: rgb(255, 255, 255); background-clip: padding-box;">Спутник</div><div style="z-index: -1; padding-top: 2px; -webkit-background-clip: padding-box; border-width: 0px 1px 1px; border-right-style: solid; border-bottom-style: solid; border-left-style: solid; border-right-color: rgba(0, 0, 0, 0.14902); border-bottom-color: rgba(0, 0, 0, 0.14902); border-left-color: rgba(0, 0, 0, 0.14902); -webkit-box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; box-shadow: rgba(0, 0, 0, 0.298039) 0px 1px 4px -1px; position: absolute; right: 0px; top: 28px; text-align: left; display: none; background-color: white; background-clip: padding-box;"><div draggable="false" title="Чтобы просмотреть карту под углом 45 градусов, увеличьте масштаб." style="color: rgb(184, 184, 184); font-family: Roboto, Arial, sans-serif; -webkit-user-select: none; font-size: 11px; padding: 3px 8px 3px 3px; direction: ltr; text-align: left; white-space: nowrap; display: none; background-color: rgb(255, 255, 255);"><span role="checkbox" style="box-sizing: border-box; position: relative; line-height: 0; font-size: 0px; margin: 0px 5px 0px 0px; display: inline-block; border: 1px solid rgb(241, 241, 241); border-top-left-radius: 1px; border-top-right-radius: 1px; border-bottom-right-radius: 1px; border-bottom-left-radius: 1px; width: 13px; height: 13px; vertical-align: middle; background-color: rgb(255, 255, 255);"><div style="position: absolute; left: 1px; top: -2px; width: 13px; height: 11px; overflow: hidden; display: none;"><img src="https://maps.gstatic.com/mapfiles/mv/imgs8.png" draggable="false" style="position: absolute; left: -52px; top: -44px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; width: 68px; height: 67px;"></div></span><label style="vertical-align: middle; cursor: pointer;">45°</label></div><div draggable="false" title="Показать спутниковую карту с названиями объектов" style="color: rgb(0, 0, 0); font-family: Roboto, Arial, sans-serif; -webkit-user-select: none; font-size: 11px; padding: 3px 8px 3px 3px; direction: ltr; text-align: left; white-space: nowrap; background-color: rgb(255, 255, 255);"><span role="checkbox" style="box-sizing: border-box; position: relative; line-height: 0; font-size: 0px; margin: 0px 5px 0px 0px; display: inline-block; border: 1px solid rgb(198, 198, 198); border-top-left-radius: 1px; border-top-right-radius: 1px; border-bottom-right-radius: 1px; border-bottom-left-radius: 1px; width: 13px; height: 13px; vertical-align: middle; background-color: rgb(255, 255, 255);"><div style="position: absolute; left: 1px; top: -2px; width: 13px; height: 11px; overflow: hidden;"><img src="https://maps.gstatic.com/mapfiles/mv/imgs8.png" draggable="false" style="position: absolute; left: -52px; top: -44px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; width: 68px; height: 67px;"></div></span><label style="vertical-align: middle; cursor: pointer;">Названия объектов</label></div></div></div></div><div draggable="false" class="gm-style-cc" style="-webkit-user-select: none; position: absolute; right: 268px; bottom: 0px;"><div style="opacity: 0.7; width: 100%; height: 100%; position: absolute;"><div style="width: 1px;"></div><div style="width: auto; height: 100%; margin-left: 1px; background-color: rgb(245, 245, 245);"></div></div><div style="position: relative; padding-right: 6px; padding-left: 6px; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right;"><span>100 м&nbsp;</span><div style="position: relative; display: inline-block; height: 8px; bottom: -1px; width: 57px;"><div style="width: 100%; height: 4px; position: absolute; bottom: 0px; left: 0px; background-color: rgb(255, 255, 255);"></div><div style="position: absolute; left: 0px; top: 0px; width: 4px; height: 8px; background-color: rgb(255, 255, 255);"></div><div style="width: 4px; height: 8px; position: absolute; bottom: 0px; right: 0px; background-color: rgb(255, 255, 255);"></div><div style="position: absolute; height: 2px; bottom: 1px; right: 1px; left: 1px; background-color: rgb(102, 102, 102);"></div><div style="position: absolute; left: 1px; top: 1px; width: 2px; height: 6px; background-color: rgb(102, 102, 102);"></div><div style="width: 2px; height: 6px; position: absolute; bottom: 1px; right: 1px; background-color: rgb(102, 102, 102);"></div></div></div></div></div></div>

        <script type="text/javascript">
            var mapDiv,
                    map,
                    infobox;
            jQuery(document).ready(function ($) {

                mapDiv = $("#single-page-main-map");
                mapDiv.height(400).gmap3({
                    marker: {
                        values: [
                            {address: "<?= $address; ?>"}
                        ]
                    },
                    map: {
                        options: {
                            zoom: 14
                        }
                    }
                });

                map = mapDiv.gmap3("get");

                infobox = new InfoBox({
                    pixelOffset: new google.maps.Size(-50, -65),
                    closeBoxURL: '',
                    enableEventPropagation: true
                });
                mapDiv.delegate('.infoBox .close', 'click', function () {
                    infobox.close();
                });

                if(Modernizr.touch) {
                    map.setOptions({draggable: false});
                    var draggableClass = 'inactive';
                    var draggableTitle = "Activate map";
                    var draggableButton = $('<div class="draggable-toggle-button ' + draggableClass + '">' + draggableTitle + '</div>').appendTo(mapDiv);
                    draggableButton.click(function () {
                        if($(this).hasClass('active')) {
                            $(this).removeClass('active').addClass('inactive').text("Activate map");
                            map.setOptions({draggable: false});
                        } else {
                            $(this).removeClass('inactive').addClass('active').text("Deactivate map");
                            map.setOptions({draggable: true});
                        }
                    });
                }

            });
        </script>
        <div id="ad-address">
            <span><i class="fa fa-map-marker"></i>
                <?= $address; ?>
            </span>
        </div>
    </div>
</div>
<div class="clearfix"></div>
<div class="author-info clearfix">
    <div class="author-avatar">
        <img width="150" height="150" class="avatar avatar-150 photo" src="http://0.gravatar.com/avatar/43f98a61197d22002cbb15957d11fb27?s=150&amp;d=http%3A%2F%2F0.gravatar.com%2Favatar%2Fad516503a11cd5ca435acc9bb6523536%3Fs%3D150&amp;r=G" alt="">
    </div>
    <div class="author-detail-right clearfix">
        <?php if($profile->profile['address1']): ?>
            <span class="ad-detail-info">
                <span class="ad-details">
                    <i class="fa fa-map-marker"></i>Address: <?= $profile->profile['address1']; ?> <?= $profile->profile['city']; ?>
                </span>
            </span>
        <?php endif; ?>
        <?php if($profile->profile['phone']): ?>
            <span class="ad-detail-info">
                <span class="ad-details">
                    <i class="fa fa-phone"></i>Call: <?= $profile->profile['phone']; ?>
                </span>
            </span>
        <?php endif; ?>
        <?php if($profile->profile['website']): ?>
            <span class="ad-detail-info">
                <span class="ad-details">
                    <i class="fa fa-globe"></i>Website:
                    <a href="<?= $profile->profile['website']; ?>" target="_blank"><?= $profile->profile['website']; ?></a>
                </span>
            </span>
        <?php endif; ?>
    </div>

    <div class="ad-detail-info author-btn">
        <span class="author-profile-ad-details">
            <!--            <a class="button-ag large green" href="http://demo.designinvento.net/classiads/author/designinvento/">
                            <span class="button-inner">designinvento</span>
                        </a>-->
        </span>
    </div>
</div>
<div class="post-detail" style="text-align: center">
    <?php
    $videos = json_decode($this->item->minicck->getFieldValue($this->item->id, 'c_video'), true);
    ?>
    <?php if(is_array($videos) && !empty($videos)): ?>
        <?php foreach($videos as $video): ?>
            <?php
            $video = str_replace('watch?v=', 'v/', $video);
            $width = 650;
            $height = 344;
            print '<object width="' . $width . '" height="' . $height . '" data="' . $video . '" type="application/x-shockwave-flash"><param name="src" value="' . $video . '" /></object>';
            ?>
        <?php endforeach; ?>
    <?php endif; ?>
</div>
<div class="ad-detail-content">
</div>
<!--    <div class="full">
        <h3>LEAVE MESSAGE TO AUTHOR</h3>
        <div class="h3-seprator"></div>
        <div id="contact-ad-owner-v2">

            <form class="contactform" method="post" id="contact-form" action="http://demo.designinvento.net/classiads/laptop-with-no-scratch/" name="contactForm">

                <input type="text" class="input-textarea half" id="contactName" name="contactName" placeholder="Full Name">

                <input type="text" style="margin-right:0px !important;" class="input-textarea half" id="email" name="email" placeholder="Email">

                <input type="text" class="input-textarea" id="subject" name="subject" placeholder="Subject">

                <textarea rows="5" cols="8" id="commentsText" name="comments" placeholder="Write your message here..."></textarea>

                <p class="humantest">Human test. Please input the result of 5+3=?</p>

                <input type="text" class="input-textarea half" value="" id="humanTest" name="humanTest" onblur="if(this.value == '')
                            this.value = '';" onfocus="if(this.value == '')
                                        this.value = '';">
                <div class="clearfix"></div>
                <div class="btn-container">
                    <input type="submit" class="input-submit" value="Send Message" name="submitted">
                </div>
            </form>


        </div>

    </div>-->

<div id="ad-comments">
    <div id="ad-comments">
    </div>
</div>
<?php echo $this->item->event->afterDisplayContent; ?>
