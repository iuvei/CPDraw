package com.xamc.single
{
	import com.xamc.service.ServerTool;
	import com.xamc.service.ServerToolImpl;
	
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;

	public class PublicDataClass
	{
		public function PublicDataClass()
		{
		}
		
		//pk10 当前状态； 0为开奖，1正在开奖。
		public static var base_game_state:int;
		//pk10 上一期开奖结果；
		public static var base_resultArr:Array = [];
		
		//pk10 上一期开奖信息；
		public static var base_lastResultInfo:Object = {};
		//pk10  当前期开奖信息；
		public static var base_nowResultInfo:Object = {};
		
		//pk10 历史开奖结果  1~10  对应的最近50期   期号数组
		public static var base_historyDataIusseArr:Array = [];
		
		//pk10 历史开奖结果  1~10  对应的最近50期历史数据——折线图/表格；
		public static var base_historyDataArr:Array = []
	
		//保存下一期的期号，来判断是否开奖；
		public static var saveIssueNumber:String;
		
		
		public static function RequestData_And_SaveData(CallbackFunction:Function, ...rest):void
		{
			var server:ServerTool = new ServerToolImpl();
			var params:Object = new Object();
			params.dateString = "";
			params.type = 2;
			params.lotteryId = rest[0];
			if(10==rest[0]){//PK10
				server.getPK10shipinData(params,resultHandler,faultHandler);
			}else if(12==rest[0]){//重庆时时彩
				server.getSSCshipinData(params,resultHandler,faultHandler);
			}else if(14==rest[0]){//新疆时时彩
				server.getSSCshipinData(params,resultHandler,faultHandler);
			}else if(26==rest[0]){//江苏快3
				server.getKUAI3shipinData(params,resultHandler,faultHandler);
			}else if(15==rest[0]){//上海时时乐
				server.getSHSSLshipinData(params,resultHandler,faultHandler);
			}else if(71==rest[0]){//天津时时彩
				server.getSSCshipinData(params,resultHandler,faultHandler);
			}
			
			function resultHandler(e:ResultEvent):void
			{
				//Alert.show(e.result.toString());
				trace(e.result.toString());
				var obj:Object = JSON.parse(e.result.toString());
				
				//当前状态 
				PublicDataClass.base_game_state = obj.resultState;
				//上一期开奖结果；
				PublicDataClass.base_resultArr = obj.lastResultIssus.drawResult.split(","); 
				//上一期开奖信息；
				PublicDataClass.base_lastResultInfo = obj.lastResultIssus;
				//当前期开奖信息；
				PublicDataClass.base_nowResultInfo = obj.nowResultIssus;
				//历史开奖结果  1~10  对应的最近50期   期号数组
				PublicDataClass.base_historyDataIusseArr = obj.issuses.split(",");
				//历史开奖结果  1~10  对应的最近50期历史数据——折线图/表格
				PublicDataClass.base_historyDataArr = obj.statisticsDatas; 
				//保存下一期的期号
				PublicDataClass.saveIssueNumber = obj.nowResultIssus.issueNumber;
				
				//初始化 数据；
				CallbackFunction();
			}
			
			function faultHandler(e:FaultEvent):void
			{
				trace("请求服务器异常！！！");
			}
		}
	}
}