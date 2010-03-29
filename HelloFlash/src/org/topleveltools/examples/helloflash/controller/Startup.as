package org.topleveltools.examples.helloflash.controller
{
	import tools.get.getValue;

	import tools.command.execute;

	import tools.observer.notify;

	import flash.display.Sprite;

	import org.topleveltools.examples.helloflash.model.MessageVO;
	import org.topleveltools.examples.helloflash.view.Readout;

	public class Startup
	{
		private var container:Sprite = getValue(HelloFlash) as Sprite;

		public function execute():void
		{
			container.addChild(new Readout());
			tools.command.execute(CreateBall);
			notify(new MessageVO("App started. Now click on that ball already!"));
		}
	}
}