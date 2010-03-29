package org.topleveltools.examples.helloflash.view
{
	import $Get.getInstance;

	import $Mediator.Mediator;

	import $Observer.observe;

	import org.topleveltools.examples.helloflash.model.MessageVO;
	import org.topleveltools.examples.helloflash.model.StatsModel;

	public class ReadoutMediator extends Mediator
	{
		public var statsModel:StatsModel = getInstance(StatsModel);

		override public function onRegister():void
		{
			observe(MessageVO, onBallCreated);
		}

		private function onBallCreated(messageVO:MessageVO):void
		{
			Readout(view).setText('Click count: ' + statsModel.ballClickCount + ' ' + messageVO.message);
		}
	}
}