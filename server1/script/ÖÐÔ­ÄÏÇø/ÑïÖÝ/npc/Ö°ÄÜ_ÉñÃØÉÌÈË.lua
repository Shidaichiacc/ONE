-- 扬州　职能　神秘商人
-- By Li_Xin (2004-08-17)
-- By Ren Bin (2004-12-15) 增加千奇百怪动物秀的活动入口



Include("\\script\\global\\shenmi_chapman.lua") 
Include( "\\script\\global\\mask_ani.lua" )
Include( "\\script\\global\\weapon_ring.lua" )
Include("\\script\\event\\act2years_yn\\baibaoxiang.lua") 


function main()
	Say("Qu猲 mang ti襫 �? Kh玭g sao! Ta � y i ngi! Nh璶g nh� quay l筰 s韒 nh�!",1,"Л頲!/no")	
end;

function chr_buy()

	Say("Ta c� 2 b秓 v藅 d祅h cho d辮 Gi竛g sinh n祔,  l� <color=red>g Gi� Noel<color> v� <color=red>Thi猲 S� Gi竛g sinh<color>. N誹 mau ri猲g m鏸 c竔 l� <color=red>399 v筺 lng<color>, mua c� 2 c竔 ch� c� <color=red>688 v筺 lng<color>. C遪 do d� g� n鱝?",4,"Mua M苩 n� g Gi� Noel (399 v筺) /mask","Mua M苩 n� Thi猲 S� Gi竛g sinh (399 v筺) /mask","Mua c� 2 M苩 n� (688 v筺) /mask_all","в ta suy ngh� k� l筰 xem/no")

end

function mask_all()

	on_Pay = 6880000
	if ( GetCash() >= on_Pay ) then
		Pay( on_Pay )
		AddItem(0,11,70,0,0,0,0)
		AddItem(0,11,71,0,0,0,0)
		Msg2Player("B筺 nh薾 頲 1 b� M苩 n� ")
	else
		Say("Qu猲 mang ti襫 �? Kh玭g sao! Ta � y i ngi! Nh璶g nh� quay l筰 s韒 nh�!",1,"Л頲!/no")
	end
end


function mask(msel)

	on_Pay = 3990000
	if ( GetCash() >= on_Pay ) then
		Pay( on_Pay )
		if ( msel == 0 ) then
			AddItem(0,11,70,0,0,0,0)
			Msg2Player("B筺 nh薾 頲 1 M苩 n� g Gi� Noel")
		else
			AddItem(0,11,71,0,0,0,0)
			Msg2Player("B筺 nh薾 頲 1 M苩 n� Thi猲 S� Gi竛g sinh")
		end
	else
		Say("Qu猲 mang ti襫 �? Kh玭g sao! Ta � y i ngi! Nh璶g nh� quay l筰 s韒 nh�!",1,"Л頲!/no")
	end

end

function no()

end