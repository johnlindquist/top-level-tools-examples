package org.topleveltools.examples.helloflash.view
{
	import $.execute;
	import $.getInstance;
	import $.mapCallback;

	import $MVC.Mediator;

	import flash.events.MouseEvent;

	import org.topleveltools.examples.helloflash.controller.CreateBallCommand;
	import org.topleveltools.examples.helloflash.model.StatsModel;

	public class BallMediator extends Mediator
	{
		public var statsModel:StatsModel = getInstance(StatsModel);

		override public function onRegister():void
		{
			view.addEventListener(MouseEvent.CLICK, onClick);
			mapCallback(CreateBallCommand, onBallCreated);
		}

		protected function onClick(e:MouseEvent):void
		{
			statsModel.recordBallClick();
			execute(CreateBallCommand);
		}

		private function onBallCreated():void
		{
			Ball(view).poke();
		}
	}
}