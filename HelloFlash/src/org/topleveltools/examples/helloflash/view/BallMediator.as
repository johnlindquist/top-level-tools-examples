package org.topleveltools.examples.helloflash.view
{
	import flash.events.MouseEvent;

	import org.topleveltools.examples.helloflash.controller.CreateBallCommand;
	import org.topleveltools.examples.helloflash.model.StatsModel;

	public class BallMediator extends $Mediator
	{
		public var statsModel:StatsModel = $getInstance(StatsModel);

		override public function onRegister():void
		{
			view.addEventListener(MouseEvent.CLICK, onClick);
			$mapCallback(CreateBallCommand, onBallCreated);
		}

		private function onBallCreated():void
		{
			Ball(view).poke();
		}

		protected function onClick(e:MouseEvent):void
		{
			statsModel.recordBallClick();
			$execute(CreateBallCommand);

		}
	}
}