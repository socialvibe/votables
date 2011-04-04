package com.model
{
	import mx.utils.ObjectProxy;

	public class DataModel
	{
		static private var _instance:DataModel;
		
		private var _round:Number;
		private var _roundTotal:Number;
		
		private var _voted:Number;
		private var _totalVotableUsers:Number;
		
		private var _voteOptions:Array = [];
		
		private var _colorOptions:Array = [];
		
		public function DataModel()
		{
			testData();
		}
		
		private function testData():void
		{
			_round = 1;
			_roundTotal = 3;
			
			for (var i:int = 0; i < 5; i++) {
				var temp:Object = {label:'testLabel'+i, data:'testData'+i};
				_voteOptions.push(temp);
			} 
		}
		
		static public function get instance():DataModel
		{
			if (!_instance) {
				_instance = new DataModel();
			}
			
			return _instance;
		}
		
		private function setupColorArray():void
		{
			
		}
		
		public function get vote_options():ObjectProxy
		{
			return new ObjectProxy(_voteOptions);
		}
		
		public function get colors():ObjectProxy
		{
			return new ObjectProxy(_colorOptions);
		}
	}
}