-- 检查是否在宋金地图
-- LiuKuo
-- 2004.12.22
IncludeLib("BATTLE")
Include("\\script\\battles\\battlehead.lua")
tbCD_MAP = {516, 517, 580, 581}	--烽火连城守城地图

function main(nItemIdx)

	W,X,Y = GetWorldPos();
	nMapId = SubWorldIdx2MapCopy(SubWorld)
	for i = 1, getn(tbBATTLEMAP) do 
		if ( nMapId == tbBATTLEMAP[i] ) then
			
			if BT_GetGameData(GAME_BATTLEID) == 2 then
				Msg2Player("Чo c� n祔 kh玭g th� s� d鬾g t筰 chi課 trng qu鑓 chi課 T鑞g Kim");
				return 1;
			end
			
			if (EatMedicine(nItemIdx) == -1) then
				return 1
			else
				return 0
			end
		end
	end
	
	for i = 1, getn(tbCD_MAP) do
		if (nMapId == tbCD_MAP[i]) then
			if (EatMedicine(nItemIdx) == -1) then
				return 1
			else
				return 0
			end
		end
	end
	Msg2Player("V藅 ph萴 n祔 ch� c� th� s� d鬾g � Chi課 trng T鑞g Kim");
	return 1;
end