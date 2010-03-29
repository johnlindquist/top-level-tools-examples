package org.topleveltools.examples.helloflash.view
{
	import top.get.getInstance;

	import top.mediator.Mediator;

	import top.observer.observe;

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