package org.topleveltools.examples.helloflash.view
{
	import org.topleveltools.examples.helloflash.model.StatsModel;

	public class ReadoutMediator
	{
		public var view:Readout = $getView(ReadoutMediator) as Readout;

		public var statsModel:StatsModel = $getInstance(StatsModel);

		public function ReadoutMediator()
		{
			
		}
	}
}