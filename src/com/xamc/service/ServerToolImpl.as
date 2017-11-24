package com.xamc.service
{
	import com.xamc.service.SendMessageService;
	import com.xamc.single.CurrentBusinessInfo;
	
	import mx.controls.Alert;

	/**
	 * 方法调用实现类 
	 * @author qu
	 * 
	 */	
	public class ServerToolImpl implements ServerTool
	{
		private var sendMessageService:SendMessageService;
		
		public function ServerToolImpl()
		{
			super();
		}
		
		
		/**
		 * 获取PK10开奖视频页面数据
		 * @param params 			传递的参数
		 * @param resultHandler		调用成功后调用方法
		 * @param faultHandler		调用失败后调用的方法
		 * 
		 */		
		public function getPK10shipinData(params:Object, resultHandler:Function = null, faultHandler:Function = null):void
		{
			sendMessageService = new SendMessageService();
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl+"actions/PK10API",params,resultHandler,faultHandler,1);
		}
		
		/**
		 * 获取SSC开奖视频页面数据
		 * @param params 			传递的参数
		 * @param resultHandler		调用成功后调用方法
		 * @param faultHandler		调用失败后调用的方法
		 * 
		 */	
		public function getSSCshipinData(params:Object, resultHandler:Function=null, faultHandler:Function=null):void
		{
			sendMessageService = new SendMessageService();
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl+"actions/SSCAPI",params,resultHandler,faultHandler,1);
		}
		
		/**
		 * 获取KUAI3开奖视频页面数据
		 * @param params 			传递的参数
		 * @param resultHandler		调用成功后调用方法
		 * @param faultHandler		调用失败后调用的方法
		 * 
		 */	
		public function getKUAI3shipinData(params:Object, resultHandler:Function=null, faultHandler:Function=null):void
		{
			sendMessageService = new SendMessageService();
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl+"actions/KUAI3API",params,resultHandler,faultHandler,1);
		}
		
		/**
		 * 获取SHSSL开奖视频页面数据
		 * @param params 			传递的参数
		 * @param resultHandler		调用成功后调用方法
		 * @param faultHandler		调用失败后调用的方法
		 * 
		 */	
		public function getSHSSLshipinData(params:Object, resultHandler:Function=null, faultHandler:Function=null):void
		{
			sendMessageService = new SendMessageService();
			sendMessageService.sendMessage(CurrentBusinessInfo.serverUrl+"actions/SSLAPI",params,resultHandler,faultHandler,1);
		}
		
	}
}