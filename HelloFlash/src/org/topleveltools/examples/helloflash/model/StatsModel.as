package org.topleveltools.examples.helloflash.model
{

	public class StatsModel
	{
		protected var _ballClickCount:int;

		public function StatsModel()
		{
			_ballClickCount = 0;
			trace("org.topleveltools.examples.helloflash.model.StatsModel::StatsModel: ", _ballClickCount);
		}

		public function recordBallClick():void
		{
			_ballClickCount++;
			trace("org.topleveltools.examples.helloflash.model.StatsModel::StatsModel: ", _ballClickCount);
		}

		public function get ballClickCount():int
		{
			trace("org.topleveltools.examples.helloflash.model.StatsModel::StatsModel: ", _ballClickCount);
			return _ballClickCount;
		}
	}
}