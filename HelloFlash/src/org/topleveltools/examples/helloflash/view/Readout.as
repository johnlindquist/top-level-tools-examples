package org.topleveltools.examples.helloflash.view
{
	import flash.display.Sprite;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;

	public class Readout extends Sprite
	{
		protected var textField:TextField;

		public function Readout()
		{
			textField = new TextField();
			textField.autoSize = TextFieldAutoSize.LEFT;
			addChild(textField);
		}

		public function setText(str:String):void
		{
			textField.text = str;
		}
	}
}