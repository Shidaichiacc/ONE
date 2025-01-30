--西南北区 成都府 衙门差役对话 世界任务（成都杀野猪）
-- Update: Dan_Deng(2004-03-19)

FESTIVAL06_NPCNAME = "<color=yellow>:<color>";

Include("\\script\\global\\repute_head.lua")

Include([[\script\global\路人_衙门卫兵.lua]]);

function main(sel)
    gsoldier_entance();
end;

function main_former()
	Uworld11 = GetTask(11)
	if (Uworld11 == 100) then			-- 任务完成
		W11_prise()
	elseif (Uworld11 < 255) and (Uworld11 >= 1) then		-- 任务中
		Talk(1,"","Mu鑞 l穘h thng h�? Gi誸 mi con heo r鮪g 甶 r錳 h穣 n鉯!")
	elseif (Uworld11 > 255) then		-- 任务已经完成
		Talk(1,"","G莕 Th祅h Й c� r蕋 nhi襲 n骾, thng c� heo r鮪g xu蕋 hi謓,l莕 n祔 may nh� c� ngi m韎 c� th� b秓 m 頲 thu ho筩h c馻 n╩ nay.")
	else			-- 未接任务
		Talk(1,"","Ngi d竚 x玭g v祇 nha m玭? ng l� ╪ gan h飉 m藅 g蕌!")
	end
end;

function W11_prise()
	Talk(1,"","Х gi誸 ch誸 10 con heo r鮪g? T鑤 qu�! Ta thay m苩 tr╩ h� Th祅h Й 產 t� ngi v� c竎 v� hi謕 s�  ra tay. Зy l� 500 lng thng!")
	Earn(500)
	SetTask(11,date("%Y%m%d"))
	i = random(0,99)
	if (i < 50) then			-- 50%几率
		x = 3
	elseif (i < 85) then		-- 35%几率
		x = 4
	else							-- 15%几率
		x = 5
	end
	AddRepute(x)
	Msg2Player("Nhi謒 v� ho祅 th祅h, 頲 thng 50 lng b筩, 甶觤 thanh th� c馻 b筺 頲 t╪g "..x.."甶觤.")
end;
