package
{
	import $Command.execute;

	import $Map.mapCommand;
	import $Map.mapMediator;
	import $Map.mapSingleton;
	import $Map.mapValue;

	import flash.display.Sprite;

	import org.topleveltools.examples.helloflash.controller.CreateBall;
	import org.topleveltools.examples.helloflash.controller.FormatMessage;
	import org.topleveltools.examples.helloflash.controller.Startup;
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

			mapValue(HelloFlash, this);

			mapMediator(this, Ball, BallMediator);
			mapMediator(this, Readout, ReadoutMediator);

			mapCommand(CreateBall, CreateBall);
			mapCommand(FormatMessage, FormatMessage);

			execute(Startup);
		}
	}
}
