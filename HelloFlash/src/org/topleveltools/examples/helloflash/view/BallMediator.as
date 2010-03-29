package org.topleveltools.examples.helloflash.view
{
	import tools.command.execute;

	import tools.get.getInstance;

	import tools.map.mapCallback;

	import tools.mediator.Mediator;

	import flash.events.MouseEvent;

	import org.topleveltools.examples.helloflash.controller.CreateBall;
	import org.topleveltools.examples.helloflash.controller.FormatMessage;
	import org.topleveltools.examples.helloflash.model.StatsModel;

	public class BallMediator extends Mediator
	{
		public var statsModel:StatsModel = getInstance(StatsModel);

		override public function onRegister():void
		{
			view.addEventListener(MouseEvent.CLICK, onClick);
			mapCallback(CreateBall, onBallCreated);
		}

		protected function onClick(e:MouseEvent):void
		{
			statsModel.recordBallClick();
			execute(CreateBall);
			execute(FormatMessage);
		}

		private function onBallCreated():void
		{
			Ball(view).poke();
		}
	}
}