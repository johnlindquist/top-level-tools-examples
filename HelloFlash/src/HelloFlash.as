package
{
	import $.execute;
	import $.mapSingleton;

	import $MVC.mapMediator;

	import flash.display.Sprite;

	import org.topleveltools.examples.helloflash.controller.StartupCommand;
	import org.topleveltools.examples.helloflash.model.StatsModel;
	import org.topleveltools.examples.helloflash.view.Ball;
	import org.topleveltools.examples.helloflash.view.BallMediator;
	import org.topleveltools.examples.helloflash.view.Readout;
	import org.topleveltools.examples.helloflash.view.ReadoutMediator;

	public class HelloFlash extends Sprite
	{
		public function HelloFlash()
		{
			mapSingleton(StatsModel);

			mapMediator(this, Ball, BallMediator);
			mapMediator(this, Readout, ReadoutMediator);

			execute(StartupCommand);
		}
	}
}
