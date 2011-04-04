package com.control
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import flash.utils.clearInterval;
	import flash.utils.setInterval;
	
	import spark.components.Group;
	
	import com.view.CountdownTimer;
	
	public class TimeController extends EventDispatcher
	{
		public static const COUNTDOWN_FINISH:String = ""; 
		
		private var _timeView:CountdownTimer;
		
		private var _startTime:Date;
		private var _expireTime:Date;
		private var _countdownTime:Number;
		
		private var _interval_id:Number;
		
		public function TimeController(target:CountdownTimer, startTime:Date = null)
		{
			super(target);
			
			_timeView = target;
			
			//For testing
			_startTime = new Date();
			_expireTime = new Date();
			_expireTime.setTime(_startTime.time + 100000000); //10 seconds
			
			_countdownTime = (_expireTime.time - _startTime.time);

			_timeView.countdown_text = prettyTime(_countdownTime);
			
			_interval_id = setInterval(countDown, 1);
		}
		
		private function countDown():void
		{
			var _currentTime:Date = new Date();
			var timeDifference:Number = _currentTime.time - _startTime.time;
			
			_timeView.countdown_text = prettyTime(_countdownTime - timeDifference);
			
			if ((_countdownTime - timeDifference) <= 0) {
				clearInterval(_interval_id);
				
				this.dispatchEvent(new Event(COUNTDOWN_FINISH, true, false));
				
				_timeView.countdown_text = "00:00:00";
			}
		}
		
		private function prettyTime(milliseconds:Number):String
		{
			var hours:String = Math.floor(milliseconds/3600000).toString();
			if (hours.length == 1) {
				hours = "0"+hours;
			}
			var minutes:String = Math.floor((milliseconds%3600000)/60000).toString();
			if (minutes.length == 1) {
				minutes = "0"+minutes;
			}
			var seconds:String = Math.floor(((milliseconds%3600000)%60000)/1000).toString();
			if (seconds.length == 1) {
				seconds = "0"+seconds;
			}
			return hours + ":"+minutes+":"+seconds;
		}
	}
}