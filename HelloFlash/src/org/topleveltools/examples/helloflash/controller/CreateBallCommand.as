package org.topleveltools.examples.helloflash.controller
{
	import flash.display.Sprite;

	import org.topleveltools.examples.helloflash.view.Ball;

	public class CreateBallCommand
	{
		public function execute():void
		{
			var ball:Ball = new Ball();
			ball.x = Math.random() * 500;
			ball.y = Math.random() * 375;
			$getContext(Ball).addChild(ball);
		}
	}
}