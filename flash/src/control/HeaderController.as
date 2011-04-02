package control
{
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	public class HeaderController extends EventDispatcher
	{
		public function HeaderController(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}