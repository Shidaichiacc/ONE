Include("\\script\\lib\\log.lua")
IncludeLib("ITEM")

_LogBachHo = function (nItemIdx)
	local strItemName = GetItemName(nItemIdx)
	local szCode = ""
	if GetItemCmd then
		szCode = GetItemCmd(nItemIdx) or ""
	end
	%tbLog:PlayerAwardLog("LogDoPhoBachHo", "SuDungVatPhamNhanDuoc",strItemName,szCode,0)
end

tbAward_Ext = {
	["award1500"] = {
		  {szName = "Kim � Kh� Gi�i - T� ch�n h� ph�i", tbProp={6,1,30180,1,0,0},nCount=1,tbParam={7,0,0,0,0,0}},
	},
	["award200"] = {
			{szName = "�i�m Kinh Nghi�m", nExp=100000000,nRate=42},
			{szName = "�i�m Kinh Nghi�m", nExp=200000000,nRate=25},
			{szName = "�i�m Kinh Nghi�m", nExp=300000000,nRate=19},
			{szName = "�i�m Kinh Nghi�m", nExp=500000000,nRate=9.9},
			{szName="�� Ph� B�ch H� Kh�i",tbProp={6,1,3173,1,0,0},nRate=0.5,CallBack = _LogBachHo},
			{szName="�� Ph� B�ch H� Y",tbProp={6,1,3174,1,0,0},nRate=0.5,CallBack = _LogBachHo},
			{szName="�� Ph� B�ch H� Y�u ��i",tbProp={6,1,3176,1,0,0},nRate=0.5,CallBack = _LogBachHo},
			{szName="�� Ph� B�ch H� H� Uy�n",tbProp={6,1,3177,1,0,0},nRate=0.5,CallBack = _LogBachHo},
			{szName="�� Ph� B�ch H� H�ng Li�n",tbProp={6,1,3178,1,0,0},nRate=0.5,CallBack = _LogBachHo},
			{szName="�� Ph� B�ch H� B�i",tbProp={6,1,3179,1,0,0},nRate=0.5,CallBack = _LogBachHo},
			{szName="�� Ph� B�ch H� H�i",tbProp={6,1,3175,1,0,0},nRate=0.5,CallBack = _LogBachHo},
			{szName="�� Ph� B�ch H� Th��ng Gi�i",tbProp={6,1,3180,1,0,0},nRate=0.3,CallBack = _LogBachHo},
			{szName="B�ch H� �� Ph� H� Gi�i",tbProp={6,1,3181,1,0,0},nRate=0.3,CallBack = _LogBachHo},
			{szName="�� Ph� B�ch H� Kh� Gi�i",tbProp={6,1,3182,1,0,0},nRate=0.2,CallBack = _LogBachHo},
			{szName="B�ch H� Kim B�i",tbProp={6,1,3183,1,0,0},nRate=0.1},
	},
	["awardspecial"] = { 
			{szName="C�n Kh�n Song Tuy�t B�i",tbProp={6,1,2219,1,0,0},nCount=1,nRate=0.5,nExpiredTime=43200},
			{szName="Kim � L�nh",tbProp={6,1,2349,1,0,0},nCount=1,nRate=1},
			{szName="�� Ph� B�ch H� Kh�i",tbProp={6,1,3173,1,0,0},nCount=1,nRate=0.0005,CallBack = _LogBachHo},
			{szName="�� Ph� B�ch H� Y",tbProp={6,1,3174,1,0,0},nCount=1,nRate=0.0005,CallBack = _LogBachHo},
			{szName="�� Ph� B�ch H� H�i",tbProp={6,1,3175,1,0,0},nCount=1,nRate=0.0005,CallBack = _LogBachHo},
			{szName="�� Ph� B�ch H� Y�u ��i",tbProp={6,1,3176,1,0,0},nCount=1,nRate=0.0005,CallBack = _LogBachHo},
			{szName="�� Ph� B�ch H� H� Uy�n",tbProp={6,1,3177,1,0,0},nCount=1,nRate=0.0005,CallBack = _LogBachHo},
			{szName="�� Ph� B�ch H� H�ng Li�n",tbProp={6,1,3178,1,0,0},nCount=1,nRate=0.0005,CallBack = _LogBachHo},
			{szName="�� Ph� B�ch H� B�i",tbProp={6,1,3179,1,0,0},nCount=1,nRate=0.0005,CallBack = _LogBachHo},
			{szName="�� Ph� B�ch H� Th��ng Gi�i",tbProp={6,1,3180,1,0,0},nCount=1,nRate=0.0005,CallBack = _LogBachHo},
			{szName="B�ch H� �� Ph� H� Gi�i",tbProp={6,1,3181,1,0,0},nCount=1,nRate=0.0005,CallBack = _LogBachHo},
			{szName="�� Ph� B�ch H� Kh� Gi�i",tbProp={6,1,3182,1,0,0},nCount=1,nRate=0.0003,CallBack = _LogBachHo},
			{szName="�� Ph� Kim � Kh�i",tbProp={6,1,2982,1,0,0},nCount=1,nRate=2},
			{szName="�� Ph� Kim � Y",tbProp={6,1,2983,1,0,0},nCount=1,nRate=2},
			{szName="�� Ph� Kim � H�i",tbProp={6,1,2984,1,0,0},nCount=1,nRate=2},
			{szName="�� Ph� Kim � Y�u ��i",tbProp={6,1,2985,1,0,0},nCount=1,nRate=2},
			{szName="�� Ph� Kim � H� Uy�n",tbProp={6,1,2986,1,0,0},nCount=1,nRate=2},
			{szName="�� Ph� Kim � H�ng Li�n",tbProp={6,1,2987,1,0,0},nCount=1,nRate=2},
			{szName="�� Ph� Kim � B�i",tbProp={6,1,2988,1,0,0},nCount=1,nRate=2},
			{szName="�� Ph� Kim � Th��ng Gi�i",tbProp={6,1,2989,1,0,0},nCount=1,nRate=1},
			{szName="�� Ph� Kim � H� Gi�i",tbProp={6,1,2990,1,0,0},nCount=1,nRate=1},
			{szName="�� Ph� Kim � Kh� Gi�i",tbProp={6,1,2991,1,0,0},nCount=1,nRate=1},
			{szName = "�i�m Kinh Nghi�m", nExp=20000000,nRate=50.495},
			{szName = "�i�m Kinh Nghi�m", nExp=50000000,nRate=18},
			{szName = "�i�m Kinh Nghi�m", nExp=100000000,nRate=5},
			{szName="B�o R��ng Kim � Kh�i ( l�a ch�n m�n ph�i)",tbProp={6,1,30180,1,0,0},nCount=1,tbParam={2,0,0,0,0,0}, nRate=0.2},
			{szName="B�o R��ng Kim � Y ( l�a ch�n m�n ph�i)",tbProp={6,1,30180,1,0,0},nCount=1,tbParam={6,0,0,0,0,0},nRate=0.2},
			{szName="B�o R��ng Kim � H�i ( l�a ch�n m�n ph�i)",tbProp={6,1,30180,1,0,0},nCount=1,tbParam={8,0,0,0,0,0},nRate=0.2},
			{szName="B�o R��ng Kim � Y�u ��i ( l�a ch�n m�n ph�i)",tbProp={6,1,30180,1,0,0},nCount=1,tbParam={5,0,0,0,0,0},nRate=0.2},
			{szName="B�o R��ng Kim � H� Uy�n( l�a ch�n m�n ph�i)",tbProp={6,1,30180,1,0,0},nCount=1,tbParam={4,0,0,0,0,0},nRate=0.2},
			{szName="B�o R��ng Kim � H�ng Li�n( l�a ch�n m�n ph�i)",tbProp={6,1,30180,1,0,0},nCount=1,tbParam={1,0,0,0,0,0},nRate=0.2},
			{szName="B�o R��ng Kim � B�i( l�a ch�n m�n ph�i)",tbProp={6,1,30180,1,0,0},nCount=1,tbParam={9,0,0,0,0,0}, nRate=0.2},
			{szName="B�o R��ng Kim � Th��ng Gi�i( l�a ch�n m�n ph�i)",tbProp={6,1,30180,1,0,0},nCount=1,tbParam={3,0,0,0,0,0},nRate=0.1},
			{szName="B�o R��ng Kim � H� Gi�i( l�a ch�n m�n ph�i)",tbProp={6,1,30180,1,0,0},nCount=1,tbParam={10,0,0,0,0,0},nRate=0.1},
			{szName="B�o R��ng Kim � V� Kh�( l�a ch�n m�n ph�i)",tbProp={6,1,30180,1,0,0},nCount=1,tbParam={7,0,0,0,0,0},nRate=0.1},
			{szName="Kim Hoa Chi B�o",tbProp={6,1,3002,1,0,0},nCount=1,nRate=3.3},
			{szName="Ph� Th�y Chi B�o",tbProp={6,1,3003,1,0,0},nCount=1,nRate=2},
			{szName="Phong V�n Chi B�o",tbProp={6,1,3004,1,0,0},nCount=1,nRate=1},
			{szName="B�ch H� L�nh",tbProp={6,1,2357,1,0,0},nCount=1,nRate=0.0002,CallBack = _LogBachHo},

		},
	["awardnomal"] ={ --Server c� v� si�u quang
			{szName="Kim � L�nh",tbProp={6,1,2349,1,0,0},nCount=1,nRate=0.1},
			{szName="�� Ph� Kim � Kh�i",tbProp={6,1,2982,1,0,0},nCount=1,nRate=0.3},
			{szName="�� Ph� Kim � Y",tbProp={6,1,2983,1,0,0},nCount=1,nRate=0.3},
			{szName="�� Ph� Kim � H�i",tbProp={6,1,2984,1,0,0},nCount=1,nRate=0.3},
			{szName="�� Ph� Kim � Y�u ��i",tbProp={6,1,2985,1,0,0},nCount=1,nRate=0.3},
			{szName="�� Ph� Kim � H� Uy�n",tbProp={6,1,2986,1,0,0},nCount=1,nRate=0.2},
			{szName="�� Ph� Kim � H�ng Li�n",tbProp={6,1,2987,1,0,0},nCount=1,nRate=0.3},
			{szName="�� Ph� Kim � B�i",tbProp={6,1,2988,1,0,0},nCount=1,nRate=0.3},
			{szName="�� Ph� Kim � Th��ng Gi�i",tbProp={6,1,2989,1,0,0},nCount=1,nRate=0.2},
			{szName="�� Ph� Kim � H� Gi�i",tbProp={6,1,2990,1,0,0},nCount=1,nRate=0.2},
			{szName="�� Ph� Kim � Kh� Gi�i",tbProp={6,1,2991,1,0,0},nCount=1,nRate=0.2},
			{szName="Kim Hoa Chi B�o",tbProp={6,1,3002,1,0,0},nCount=1,nRate=0.4},
			{szName="Ph� Th�y Chi B�o",tbProp={6,1,3003,1,0,0},nCount=1,nRate=0.2},
			{szName="Phong V�n Chi B�o",tbProp={6,1,3004,1,0,0},nCount=1,nRate=0.1},
			{szName="B�o R��ng Kim � Kh�i ( l�a ch�n m�n ph�i)",tbProp={6,1,30180,1,0,0},nCount=1,tbParam={2,0,0,0,0,0}, nRate=0.004},
			{szName="B�o R��ng Kim � Y ( l�a ch�n m�n ph�i)",tbProp={6,1,30180,1,0,0},nCount=1,tbParam={6,0,0,0,0,0},nRate=0.004},
			{szName="B�o R��ng Kim � H�i ( l�a ch�n m�n ph�i)",tbProp={6,1,30180,1,0,0},nCount=1,tbParam={8,0,0,0,0,0},nRate=0.004},
			{szName="B�o R��ng Kim � Y�u ��i ( l�a ch�n m�n ph�i)",tbProp={6,1,30180,1,0,0},nCount=1,tbParam={5,0,0,0,0,0},nRate=0.004},
			{szName="B�o R��ng Kim � H� Uy�n( l�a ch�n m�n ph�i)",tbProp={6,1,30180,1,0,0},nCount=1,tbParam={4,0,0,0,0,0},nRate=0.004},
			{szName="B�o R��ng Kim � H�ng Li�n( l�a ch�n m�n ph�i)",tbProp={6,1,30180,1,0,0},nCount=1,tbParam={1,0,0,0,0,0},nRate=0.004},
			{szName="B�o R��ng Kim � B�i( l�a ch�n m�n ph�i)",tbProp={6,1,30180,1,0,0},nCount=1,tbParam={9,0,0,0,0,0}, nRate=0.004},
			{szName="B�o R��ng Kim � Th��ng Gi�i( l�a ch�n m�n ph�i)",tbProp={6,1,30180,1,0,0},nCount=1,tbParam={3,0,0,0,0,0},nRate=0.002},
			{szName="B�o R��ng Kim � H� Gi�i( l�a ch�n m�n ph�i)",tbProp={6,1,30180,1,0,0},nCount=1,tbParam={10,0,0,0,0,0},nRate=0.002},
			{szName="B�o R��ng Kim � V� Kh�( l�a ch�n m�n ph�i)",tbProp={6,1,30180,1,0,0},nCount=1,tbParam={7,0,0,0,0,0},nRate=0.001},
			{szName="Thanh C�u Th�ch",tbProp={6,1,2710,1,0,0},nCount=1,nRate=1},
			{szName="V�n L�c Th�ch",tbProp={6,1,2711,1,0,0},nCount=1,nRate=0.5},
			{szName="Th��ng Lang Th�ch",tbProp={6,1,2712,1,0,0},nCount=1,nRate=0.3},
			{szName="Qu� Ho�ng Kim",tbProp={6,1,907,1,0,0},nCount=1,nRate=1,nExpiredTime=43200},
			{szName="H�ng bao An khang",tbProp={6,1,2105,1,0,0},nCount=1,nRate=0.1},
			{szName="H�ng bao Sum v�y",tbProp={6,1,2104,1,0,0},nCount=1,nRate=0.1},
			{szName="C�ng Hi�n L� bao",tbProp={6,1,30214,1,0,0},nCount=1,nRate=2,nExpiredTime=43200},
			{szName="C�ng Hi�n ��i L� Bao",tbProp={6,1,30215,1,0,0},nCount=1,nRate=2,nExpiredTime=43200},
			{szName="Anh H�ng Thi�p",tbProp={6,1,1604,1,0,0},nCount=1,nRate=0.2,nExpiredTime=20160},
			{szName="Ho�n H�n ��n",tbProp={6,1,2837,1,0,0},nCount=1,nRate=2,nExpiredTime=43200},
			{szName="Ti�u Di�u T�n",tbProp={6,1,2831,1,0,0},nCount=1,nRate=2,nExpiredTime=43200},
			{szName="H�i thi�n t�i t�o l� bao",tbProp={6,1,2527,1,0,0},nCount=1,nRate=1,nExpiredTime=43200},
			{szName="Kim � Tr�ng Luy�n Ng�c",tbProp={6,1,3005,1,0,0},nCount=1,nRate=0.1},
			{szName="Ng�c Long L�nh B�i",tbProp={6,1,2623,1,0,0},nCount=1,nRate=1,nExpiredTime=10080},
			{szName="Ng� H�nh K� Th�ch",tbProp={6,1,2125,1,0,0},nCount=1,nRate=15},
			{szName="�� Ph� B�ch H� Kh�i",tbProp={6,1,3173,1,0,0},nCount=1,nRate=0.0005,CallBack = _LogBachHo},
			{szName="�� Ph� B�ch H� Y",tbProp={6,1,3174,1,0,0},nCount=1,nRate=0.0005,CallBack = _LogBachHo},
			{szName="�� Ph� B�ch H� H�i",tbProp={6,1,3175,1,0,0},nCount=1,nRate=0.0005,CallBack = _LogBachHo},
			{szName="�� Ph� B�ch H� Y�u ��i",tbProp={6,1,3176,1,0,0},nCount=1,nRate=0.0005,CallBack = _LogBachHo},
			{szName="�� Ph� B�ch H� H� Uy�n",tbProp={6,1,3177,1,0,0},nCount=1,nRate=0.0005,CallBack = _LogBachHo},
			{szName="�� Ph� B�ch H� H�ng Li�n",tbProp={6,1,3178,1,0,0},nCount=1,nRate=0.0005,CallBack = _LogBachHo},
			{szName="�� Ph� B�ch H� B�i",tbProp={6,1,3179,1,0,0},nCount=1,nRate=0.0005,CallBack = _LogBachHo},
			{szName="�� Ph� B�ch H� Th��ng Gi�i",tbProp={6,1,3180,1,0,0},nCount=1,nRate=0.0005,CallBack = _LogBachHo},
			{szName="B�ch H� �� Ph� H� Gi�i",tbProp={6,1,3181,1,0,0},nCount=1,nRate=0.0005,CallBack = _LogBachHo},
			{szName="�� Ph� B�ch H� Kh� Gi�i",tbProp={6,1,3182,1,0,0},nCount=1,nRate=0.0003,CallBack = _LogBachHo},
			{szName="Ki�n Thi�t L� Bao",tbProp={6,1,30216,1,0,0},nCount=1,nRate=2,nExpiredTime=43200},
			{szName="Ki�n Thi�t  ��i L� Bao",tbProp={6,1,30217,1,0,0},nCount=1,nRate=1,nExpiredTime=43200},
			{szName="Chi�n B� L� Bao",tbProp={6,1,30218,1,0,0},nCount=1,nRate=1,nExpiredTime=43200},
			{szName="Chi�n B� ��i L� Bao",tbProp={6,1,30219,1,0,0},nCount=1,nRate=1,nExpiredTime=43200},
			{szName="M�t t�ch k� n�ng 150 (C�p 19)",tbProp={6,1,30170,1,0,0},nCount=1,nRate=0.1},
			{szName="M�t t�ch k� n�ng 150 (C�p 20)",tbProp={6,1,30171,1,0,0},nCount=1,nRate=0.1},
			{szName = "�i�m Kinh Nghi�m", nExp=5000000,nRate=46.0122},
			{szName = "�i�m Kinh Nghi�m", nExp=10000000,nRate=10},
			{szName = "�i�m Kinh Nghi�m", nExp=15000000,nRate=6.5},
			{szName = "�i�m Kinh Nghi�m", nExp=20000000,nRate=0.5},
			{szName = "�i�m Kinh Nghi�m", nExp=50000000,nRate=0.05},
	},
}	