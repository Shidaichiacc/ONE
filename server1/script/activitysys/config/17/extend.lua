Include("\\script\\activitysys\\config\\17\\config.lua")
Include("\\script\\activitysys\\config\\17\\head.lua")

function pActivity:Jiluxiaohao_yesou()
	AddStatData("baoxiangxiaohao_kaiyesouxiangzi", 1)	--数据埋点第一期
end

function pActivity:Jiluxiaohao_chengzhan()
	AddStatData("baoxiangxiaohao_kaichengzhanlibao", 1)	--数据埋点第一期
end

function pActivity:Jiluxiaohao_zhizun()
	AddStatData("baoxiangxiaohao_kaizhizunmibao", 1)	--数据埋点第一期
end

function pActivity:Jiluxiaohao_shuizexiangzi()
	AddStatData("baoxiangxiaohao_kaishuizeixiangzi", 1)	--数据埋点第一期
end

--襲 ch豱h ph莕 thng r琲 ra t� boss thu� t芻 i u l躰h - Modified By DinhHQ - 20120523
function pActivity:VnFFBigBossDrop(nNpcIndex)
	tbVnFFBigBossDrop = {
		[1]={{szName="Long Huy誸 Ho祅",tbProp={6,1,2117,1,0,0},nCount=1,nRate=3,nExpiredTime=20160},},
		[2]={{szName="S竧 Th� Gi秐 l� h閜",tbProp={6,1,2339,1,0,0},nCount=1,nRate=5,nExpiredTime=10080},},
		[3]={{szName="Чi l鵦 ho祅 l� bao",tbProp={6,1,2517,1,0,0},nCount=1,nRate=8,nExpiredTime=20160},},
	}	
	tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex, tbVnFFBigBossDrop, "Ph莕 thng ti猽 di謙 Th駓 T芻 Чi u L躰h", 1)
end

function pActivity:VnUsePirateBox(nItemIdx)
	DynamicExecuteByPlayer(PlayerIndex, "\\script\\activitysys\\config\\17\\vnshuizeibaoxiang.lua", "VnPirateBox_main", nItemIdx)
	return nil
end