--两湖区 巴陵县 长江码头船夫对话
--suyu
--200306015
-- Update: Dan_Deng(2003-08-21) 降低出村等级要求为5级

CurWharf = 5;
Include("\\script\\global\\station.lua")

function main(sel)
	if (GetLevel() >= 5) then		--等级达到五级
		Say("Ta c� bi謙 hi謚 l� 'L穘g L� B筩h 襲', ba i u s鑞g d鵤 v祇 s玭g nc! Kh緋 Ba L╪g huy謓 n祔 kh玭g c� ai l� i th�! Kh竎h quan mu鑞 甶 u!", 2, "Ng錳 thuy襫/WharfFun", "Kh玭g ng錳/OnCancel")
	else		
		Talk(1,"","B猲 ngo礽 lo筺 l筩, xem ngi tr鉯 g� kh玭g ch苩! Ra ngo礽 th玭 ta e kh玭g gi� 頲 m筺g u!")
	end
end;

function  OnCancel()
   Talk(1,"","Kh玭g ti襫 kh玭g th� ng錳 thuy襫! ")
end;
