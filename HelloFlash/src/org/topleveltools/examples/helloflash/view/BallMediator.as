package org.topleveltools.examples.helloflash.view
{
	import top.command.execute;

	import top.get.getInstance;

	import top.map.mapCallback;

	import top.mediator.Mediator;

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