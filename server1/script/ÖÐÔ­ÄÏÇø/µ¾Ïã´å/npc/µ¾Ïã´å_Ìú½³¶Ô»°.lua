--中原南区 稻香村 铁匠对话

Include("\\script\\global\\global_tiejiang.lua")

TIEJIANG_DIALOG = "<dec><npc>Ta nh r琲 ra r蕋 nhi襲 lo筰 v� kh� v鮝 �!"

function main(sel)
	tiejiang_village();
end;


function yes()
Sale(89);  			--弹出交易框
end;
