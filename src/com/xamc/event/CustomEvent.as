package com.xamc.event
{
	import flash.events.Event;
	
	/**
	 * 用户自定义事件
	 * - 你可以添加一个任意类型的用户参数(body)随着事件转发
	 */
	public class CustomEvent extends Event
	{	
		private var _body:Object;
		
		public static const SPACE_15SECONDES:String = "space15Seconds";
		
		public static const SPACE_8SECONDES:String = "space8Seconds";
		
		
		
		public function CustomEvent(type:String, body:Object = null, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			
			_body = body;
		}
		
		/**
		 * 获取事件携带的用户参数
		 * - 请在监听端进行类型转换及处理 
		 */
		public function get body():Object
		{
			return _body;
		}
		
		/**
		 * 克隆函数 
		 */
		override public function clone():Event
		{
			return new CustomEvent(type, body, bubbles, cancelable);
		}
		
		/**
		 * 字符串化函数 
		 */
		override public function toString():String
		{
			return formatToString("CustomEvent", "type", "body", "bubbles", "cancelable");
		}
	}
}