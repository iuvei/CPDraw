package com.xamc.single
{
	/**
	 * 当前商户配置信息 
	 * @author nancy
	 */
	public class CurrentBusinessInfo
	{
		public function CurrentBusinessInfo()
		{
		}
		//配置访问服务器的地址
		public static var serverUrl:String = 'http://192.168.1.35:8080/CPDraw/';
		//public static var serverUrl:String = '/CPDraw/';
		
		//加载资源地址
		public static var loadUrl:String = '';
		//public static var loadUrl:String = '/CPDraw/front/flash/';
		
		//当前彩种ID
		public static var nowLottery:int;
		
	}
}