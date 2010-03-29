package org.topleveltools.examples.helloflash.controller
{
	import $Get.getValue;

	import flash.display.Sprite;

	import org.topleveltools.examples.helloflash.view.Ball;

	public class CreateBall
	{
		private var container:Sprite = getValue(HelloFlash) as Sprite;

		public function execute():void
		{
			var ball:Ball = new Ball();
			ball.x = Math.random() * 500;
			ball.y = Math.random() * 375;
			container.addChild(ball);
		}
	}
}