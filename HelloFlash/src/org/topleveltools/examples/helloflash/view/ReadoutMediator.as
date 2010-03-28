package org.topleveltools.examples.helloflash.view
{
	import $.getInstance;
	import $.mapCallback;

	import $MVC.Mediator;

	import org.topleveltools.examples.helloflash.controller.CreateBallCommand;
	import org.topleveltools.examples.helloflash.model.StatsModel;

	public class ReadoutMediator extends Mediator
	{
		public var statsModel:StatsModel = getInstance(StatsModel);

		override public function onRegister():void
		{
			mapCallback(CreateBallCommand, onBallCreated);
		}

		private function onBallCreated():void
		{
			Readout(view).setText('Click count: ' + statsModel.ballClickCount);
		}
	}
}