package org.topleveltools.examples.helloflash.model
{

	public class StatsModel
	{
		protected var _ballClickCount:int;

		public function StatsModel()
		{
			_ballClickCount = 0;
		}

		public function recordBallClick():void
		{
			_ballClickCount++;
		}

		public function get ballClickCount():int
		{
			return _ballClickCount;
		}
	}
}