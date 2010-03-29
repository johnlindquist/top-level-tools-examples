package org.topleveltools.examples.helloflash.controller
{
	import top.get.getValue;

	import top.command.execute;

	import top.observer.notify;

	import flash.display.Sprite;

	import org.topleveltools.examples.helloflash.model.MessageVO;
	import org.topleveltools.examples.helloflash.view.Readout;

	public class Startup
	{
		private var container:Sprite = getValue(HelloFlash) as Sprite;

		public function execute():void
		{
			container.addChild(new Readout());
			top.command.execute(CreateBall);
			notify(new MessageVO("App started. Now click on that ball already!"));
		}
	}
}