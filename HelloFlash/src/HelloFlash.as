package
{

	import flash.display.Sprite;
	import flash.text.TextField;

	public class HelloFlash extends Sprite
	{
		private var textField:TextField;
		public function HelloFlash()
		{
			textField = new TextField();
			textField.text = "Hello, World";
			addChild(textField);

			$addEnterFrameCallback(onEnterFrame);
			$startEnterFrame();
		}

		private function onEnterFrame():void
		{
			textField.text = Math.random().toString();
		}
	}
}
