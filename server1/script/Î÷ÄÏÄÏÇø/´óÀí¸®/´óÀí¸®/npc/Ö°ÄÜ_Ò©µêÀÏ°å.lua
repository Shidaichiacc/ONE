-- 大理 职能 药店老板
-- By: Dan_Deng(2003-09-16)
Include( "\\script\\event\\teacherday\\teacherdayhead.lua" )
Include( "\\script\\event\\teacherday\\medicine.lua" )
Include("\\script\\config\\cfg_features.lua")
OPTIONS = {}

function refine()
	DynamicExecute("\\script\\global\\jingli.lua", "dlg_entrance", PlayerIndex)
end

function main()
	Say("Ti謒 ta s鑞g nh� 觤 Thng s琻, tr猲  c� h祅g ng祅 lo筰 th秓 dc.",
		getn(OPTIONS),
		OPTIONS)
end;

function yes()
	Sale(12)  			--弹出交易框
end

if TEACHERSWITCH then
	tinsert(OPTIONS, "Gi髉 ta c蕋 dc t鰑/brew")
end
tinsert(OPTIONS, "Giao d辌h/yes")
if CFG_HONNGUYENLINHLO == 1 then
	tinsert(OPTIONS, "Ta mu鑞 ch� t筼 H鏽 Nguy猲 Linh L�/refine")
end
tinsert(OPTIONS, "Kh玭g giao d辌h/Cancel")
