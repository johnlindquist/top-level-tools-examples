package
{

	import flash.display.Sprite;

	import org.topleveltools.examples.helloflash.controller.CreateBallCommand;
	import org.topleveltools.examples.helloflash.model.StatsModel;
	import org.topleveltools.examples.helloflash.view.Ball;
	import org.topleveltools.examples.helloflash.view.BallMediator;

	public class HelloFlash extends Sprite
	{
		public function HelloFlash()
		{
			$mapSingleton(StatsModel)

			$mapMediator(this, Ball, BallMediator);

			$execute(CreateBallCommand);
		}
	}
}
