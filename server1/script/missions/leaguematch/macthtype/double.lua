--==============双人赛相关数据===============
Include("\\script\\missions\\leaguematch\\tb_head.lua")

if (not tmp_process_data) then
	return
end

--全部双人赛相关数据
WLLS_DATA = {

	name = "Song u",
	
	--地图信息
	match_type = {
		{
			name = "",
			level = 1,
			ladder = 10196,
			map = {
				{396, 560, 397, "(1)"},
				{398, 561, 399, "(2)"},
				{400, 562, 401, "(3)"},
				{402, 563, 403, "(4)"},
				{404, 564, 405, "(5)"},
				{406, 565, 407, "(6)"},
				{408, 566, 409, "(7)"},
				{410, 567, 411, "(8)"},
			},
		},
		{
			name = "",
			level = 2,
			ladder = 10197,
			map = {
				{540, 570, 541, "(1)"},
				{542, 571, 543, "(2)"},
				{544, 572, 545, "(3)"},
				{546, 573, 547, "(4)"},
				{548, 574, 549, "(5)"},
				{550, 575, 551, "(6)"},
				{552, 576, 553, "(7)"},
				{554, 577, 555, "(8)"},
			},
		},
	},
	
	award_rank = {
		{	--排行奖励，新秀
			{1, 5000},	--第1名
			{2, 4000},	--第2名
			{3, 3500},	--第3名
			{4, 3000},	--第4名
			{8, 2000},	--第5-8名
			{16, 1500},	--第9-16名
			{32, 1000},	--第17-32名
			{64, 500},	--第33-64名
			{128, 250},	--第65-128名
		}, {	--联赛
			{1, 10000},	--第1名
			{2, 8000},	--第2名
			{3, 7000},	--第3名
			{4, 6000},	--第4名
			{8, 4000},	--第5-8名
			{16, 3000},	--第9-16名
			{32, 2000},	--第17-32名
			{64, 1000},	--第33-64名
			{128, 500},	--第65-128名
		}
	},
	
	max_member = 2,	--每个战队的最大人数
	
	text_main = {	--officer主对话（末尾差异部分）
		"V� l﹎ li猲 u ki謙 xu蕋 l莕 n祔 l� <color=red>Song nh﹏ u<color>",
		"V� l﹎ li猲 u ki謙 xu蕋 l莕 n祔 l� <color=red>Song nh﹏ u<color>",
	},
	
	--====Functions====
	--我的战队
	npc_mylg = function()
		local str_des = wlls_get_desc(1)
		local n_lid, n_mtype, n_job, str_lgname, n_memcount = wlls_lg_info()
		if (FALSE(n_lid)) then
			wlls_descript("<enter>  L莕 n祔"..str_des.."l� <color=red>Song u<color>. B筺 c� th� t� ch鋘 i thi u cho m譶h hay gia nh藀 v祇 i thi u kh竎. Sau khi i trng l藀 nh鉳 v韎 ngi ch琲 kh竎 n"..str_des.."цi tho筰 v韎 Quan vi猲, ch鋘 'чi thi u"..str_des.."c馻 t玦', ch鋘 nh鱪g i h鱱 gia nh藀 trong i m譶h l� 頲. Th祅h vi猲 i thi u nhi襲 nh蕋 <color=red>2 ngi<color>",
				"Ta mu鑞 l藀"..str_des.."nh鉳/wlls_want2create",
				"Ta ch� n xem th玦/OnCancel")
			return
		end
	
		local n_mytype = LG_GetLeagueTask(n_lid, WLLS_LGTASK_STYPE)
		local n_level, n_group = wlls_getcityinfo()
		local n_next = GetGlbValue(GLB_WLLS_NEXT)
		local str = "<enter>Chi課 i c馻 b筺 hi謓 l�:<color=yellow>"..str_lgname.."<color><enter>"
		.. "чi trng i chi課 u:"..join(wlls_get_mems(n_lid), "Th祅h vi猲 i chi課 u:") .. "<enter>"
		if (n_mytype ~= n_next) then
			str = str .. "<enter>   <color=yellow>Ch� �: H筺 ch� thi u m颽 sau l� <color><color=red>"..WLLS_TAB[n_next].name.."<color><color=yellow>, n誹 mu鑞 thi u m颽 sau, xin h穣 l藀 chi課 i m韎.<color><enter>"
		end
		local tb_option = {}
		if (n_job == 1 and n_mytype == n_next) then
			str = str.."<enter>   B筺 c� th� ch鋘 <color=red> gia nh藀 v祇 i kh竎<color> ho芻 <color=red>r阨 kh醝 i thi u<color>.<enter><enter>"..
			"Qu� tr譶h th祅h vi猲 l藀 nh鉳: Trong <color=red>th阨 gian ngh� ng琲 v� th阨 gian thi u<color>, b筺 c� th� c飊g v韎 ngi ch琲 kh竎 l藀 nh鉳, ch鋘 nh鱪g i h鱱 gia nh藀 v祇 i thi u.<enter>"..
			"R阨 kh醝 i thi u: Trong <color=red>th阨 gian ngh� ng琲<color>, b筺 c� th� r阨 kh醝 i thi u; trong th阨 gian thi u n誹 i thi u c馻 b筺<color=red> ch璦 gia nh藀 thi u k� trc<color>, b筺 c� th� r阨 kh醝 i thi u; n誹  c� tham gia th� kh玭g th� r阨 i. T� c竎h i trng s� 頲 chuy觧 giao l筰 cho th祅h vi猲 kh竎, <color=yellow>n誹 kh玭g c� th祅h vi猲, chi課 i s� b� gi秈 t竛<color>."
			tb_option[getn(tb_option)+1] = "в i h鱱 c馻 Tagia nh藀 v祇 i thi u n祔/wlls_want2addmember"
		else
			str = str.."<enter>       B筺 c� th� ch鋘 r阨 kh醝 nh鉳.<enter><enter>"..
			"R阨 kh醝 nh鉳:   Trong <color=red>th阨 gian ngh� ng琲<color>, b筺 c� th� r阨 kh醝 i thi u; trong th阨 gian thi u n誹 i thi u m譶h <color=red>ch璦 tham gia gi秈 u trc<color>, b筺 c騨g c� th� r阨 kh醝 i thi u; c遪 n誹  gia nh藀 thi u kh玭g th� r阨 kh醝 i."
		end
		tb_option[getn(tb_option)+1] = "R阨 kh醝 i/wlls_want2leaveleague"
		tb_option[getn(tb_option)+1] = "Xem chi課 t輈h c馻 i/wlls_query_mylg"
		tb_option[getn(tb_option)+1] = "Ta ch� ti謓 gh� qua/OnCancel"
		wlls_descript(str, tb_option)
	end,
	
}	--WLLS_DATA

--tmp_process_data(WLLS_DATA)	
--wllstab_additem(1, WLLS_DATA)
