package com.xamc.service
{
	/**
	 * Http请求服务端交互方法接口 
	 * @author qu
	 * 
	 */	
	public interface ServerTool
	{
		/**
		 * 获取PK10开奖视频页面数据 
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */		
		function getPK10shipinData(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 * 获取SSC开奖视频页面数据 
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */		
		function getSSCshipinData(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 * 获取KUAI3开奖视频页面数据 
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */		
		function getKUAI3shipinData(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		/**
		 * 获取SHSSL开奖视频页面数据 
		 * @param params			传递的参数
		 * @param resultHandler		调用成功后执行的方法
		 * @param faultHandler      调用错误是执行的方法
		 * 
		 */		
		function getSHSSLshipinData(params:Object, resultHandler:Function = null, faultHandler:Function = null):void;
		
		
	}
}