-- ====================== 文件信息 ======================

-- 剑侠情缘网络版越南版 - 千年何首乌
-- 文件名　：qiannian_heshouwu.lua
-- 创建者　：子非魚
-- 创建时间：2009-05-21 12:17:35
-- 转生后角色使用，通过此物品最多获得25点潜能点

-- ======================================================

IncludeLib("SETTING");

TSK_QIANNIAN_HESHOUWU_PROP = 2597;

function main()
	if (GetTask(TSK_QIANNIAN_HESHOUWU_PROP) >= 25) then
		Msg2Player("V藅 ph萴 n祔 kh玭g th� n﹏g c蕄 c玭g l鵦 c馻 i hi謕 頲.");
		return 1;
	end
	
	if (ST_IsTransLife() ~= 1) then
		Msg2Player("Чi hi謕 kh玭g th� thu 頲 b蕋 k� hi謚 qu� n祇.");
		return 1;
	end
	
	local tb_prop = {
		{pot=3,msg="M閠 甶觤 "},
		{pot=4,msg="Ch璦 h鴄 "},
		{pot=5,msg="M閠 s� "},
		{pot=6,msg="Kh玭g 輙 "},
		{pot=7,msg="H琲 nhi襲 "},
		};
	
	local n_rand = random(1,5);
	local n_prop = tb_prop[n_rand].pot
	if (n_prop + GetTask(TSK_QIANNIAN_HESHOUWU_PROP) > 25) then
		n_prop = 25 - GetTask(TSK_QIANNIAN_HESHOUWU_PROP);
	end
	
	AddProp(n_prop);
	
	SetTask(TSK_QIANNIAN_HESHOUWU_PROP,GetTask(TSK_QIANNIAN_HESHOUWU_PROP)+ n_prop);
	
	Msg2Player(format("Sau khi s� d鬾g c� th� thu 頲 %s hi謚 qu�",tostring(n_prop)));
end
