package org.topleveltools.examples.helloflash.controller
{
	import org.topleveltools.examples.helloflash.view.Readout;

	public class StartupCommand
	{
		public function execute():void
		{
			$getContext(Readout).addChild(new Readout());
			$execute(CreateBallCommand);
		}
	}
}