package org.topleveltools.examples.helloflash.view
{
	import flash.display.Sprite;
	import flash.text.TextField;

	public class Readout extends Sprite
	{
		protected var textField:TextField;

		public function Readout()
		{
			textField = new TextField()
			addChild(textField);
		}

		public function setText(str:String):void
		{
			textField.text = str;
		}
	}
}