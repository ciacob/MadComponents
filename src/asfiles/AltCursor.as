﻿/** * <p>Original Author: Daniel Freeman</p> * * <p>Permission is hereby granted, free of charge, to any person obtaining a copy * of this software and associated documentation files (the "Software"), to deal * in the Software without restriction, including without limitation the rights * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell * copies of the Software, and to permit persons to whom the Software is * furnished to do so, subject to the following conditions:</p> * * <p>The above copyright notice and this permission notice shall be included in * all copies or substantial portions of the Software.</p> * * <p>THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE * AUTHORS' OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN * THE SOFTWARE.</p> * * <p>Licensed under The MIT License</p> * <p>Redistributions of files must retain the above copyright notice.</p> */package asfiles {		import flash.display.Sprite;	import flash.display.Stage;	import flash.filters.DropShadowFilter;	import flash.ui.Mouse;	import flash.geom.Rectangle;	import flash.events.MouseEvent;	import com.danielfreeman.madcomponents.Colour;		public class AltCursor extends Sprite {				private const head:int=12;		private const tail:int=16;		private const slantx:int=3;		private const slanty:int=2;			public function AltCursor(colour:uint=0xeeeeee) { //screen:Sprite=null,xx:int=0,yy:int=0) {			var myfilters:Array=new Array();		//	x=xx;y=yy;		//	if (screen!=null) screen.addChild(this);			mouseEnabled=false;			graphics.clear();			graphics.lineStyle(0,Colour.darken(colour));			graphics.beginFill(colour);			graphics.moveTo(0,0);			graphics.lineTo(0,head);			graphics.lineTo(slantx,head-slanty);			graphics.lineTo(2*slantx,tail);			graphics.lineTo(3*slantx,tail-slanty/2);			graphics.lineTo(2*slantx,head-2*slanty);			graphics.lineTo(3.5*slantx,head-2*slanty);			graphics.lineTo(0,0);			graphics.endFill();			myfilters.push(new DropShadowFilter(2.0,45,0x000000));            filters=myfilters;		}		}	}