
--可以：丢弃，交易，摆摊，卖店（0两），叠加 
--物品上的说明：
--“ 中秋节赏月时吃的一种特别月饼”
--使用方法：右键点击使用
--使用截止时间： 2008年10月31日24点
--限制： 
--50级以上的充值玩家才能使用
--未使用过明月酒道具则每个角色最多只能通过2种月饼【 见月月饼 】和【 赏月月饼 】获得15亿经验；使用明月酒道具后则最多能通过2种月饼获得30亿经验。
--zhongchaolong

zhongqiuyubing_tbAward = 
{
	{nExp = 1000000},
	{
		{szName="Huy襫 tinh kho竛g th筩h c蕄 3", tbProp={6, 1, 147, 3, 0, 0}, nRate = 5},
		{szName="Huy襫 tinh kho竛g th筩h c蕄 4", tbProp={6, 1, 147, 4, 0, 0}, nRate = 3},
		{szName="Huy襫 tinh kho竛g th筩h c蕄 5", tbProp={6, 1, 147, 5, 0, 0}, nRate = 2},
		{nRepute = 1, nRate = 24.697},
		{nRepute = 2, nRate = 25},
		{nRepute = 3, nRate = 20},
		{nRepute = 10, nRate = 3},
		{nRepute = 50, nRate = 0.2},		
		{szName="мnh Qu鑓 � Sa Ph竧 Qu竛", nQuality=1, tbProp={0, 160}, nRate = 0.008},
		{szName="мnh Qu鑓 Thanh Sa Trng Sam", nQuality=1, tbProp={0, 159}, nRate = 0.01},
		{szName="мnh Qu鑓 Ng﹏ T祄 Y猽 i", nQuality=1, tbProp={0, 163}, nRate = 0.070},
		{szName="мnh Qu鑓 X輈h Quy猲 Nhuy詎 Ngoa", nQuality=1, tbProp={0, 161}, nRate = 0.015},
		{szName="мnh Qu鑓 T� Щng H� uy觧", nQuality=1, tbProp={0, 162}, nRate = 0.1},
		{szName="L謓h b礽 vinh d� H祅 thi誸", tbProp={6, 1, 1257, 1, 0, 0}, nRate = 5},
		{szName="L謓h b礽 vinh d� Thanh ng", tbProp={6, 1, 1256, 1, 0, 0}, nRate = 3},
		{szName="L謓h b礽 vinh d� B筩h Ng﹏", tbProp={6, 1, 1255, 1, 0, 0}, nRate = 1.5},
		{szName="L謓h b礽 vinh d� Ho祅g Kim", tbProp={6, 1, 1254, 1, 0, 0}, nRate = 0.2},	
		{szName="V� L﹎ M藅 T辌h", tbProp={6, 1, 26, 1, 0, 0}, nRate = 0.1},
		{szName="T葃 T駓 Kinh", tbProp={6, 1, 22, 1, 0, 0}, nRate = 0.1},
		{szName="Th莕 b� Чi H錸g Bao", tbProp={6, 1, 402, 1, 0, 0}, nRate = 7},
	}
}
nCellFreeLimit = 10
Include("\\script\\item\\zhongqiu_jieri\\200808\\yuebing.lua")