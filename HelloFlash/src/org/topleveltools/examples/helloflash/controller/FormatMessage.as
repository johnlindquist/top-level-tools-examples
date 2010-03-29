package org.topleveltools.examples.helloflash.controller
{
	import tools.get.getInstance;

	import tools.observer.notify;

	import org.topleveltools.examples.helloflash.model.MessageVO;
	import org.topleveltools.examples.helloflash.model.StatsModel;

	public class FormatMessage
	{
		private var statsModel:StatsModel = getInstance(StatsModel) as StatsModel;

		public function execute():void
		{
			var messageVO:MessageVO = new MessageVO();
			if (statsModel.ballClickCount > 29)
				messageVO.message = "Ok, you've clicked enough. You can stop now";
			else if (statsModel.ballClickCount > 19)
				messageVO.message = "Keep clicking! You've got to at least hit 30!";
			else if (statsModel.ballClickCount > 9)
				messageVO.message = "You're on your way";
			else if (statsModel.ballClickCount > 0)
				messageVO.message = "You've only just begun to live.";

			notify(messageVO);
		}
	}
}