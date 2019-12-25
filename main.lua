local sz = require("sz")
local json = sz.json
local UIinfo = {}
require "TSLib"


function hyStrNum(str)
	if str==nil then return 40 end
	local strn = nil
	for i=1,string.len(str) do
		local num=string.sub(str,i,i)
		if tonumber(num) then
			if strn==nil then
				strn=num
			else
				strn=strn..num
			end
		end
	end
	return tonumber(strn)
end

function upgrade(... ) --升级
	if multiColTap( ... ) then
		sign_upgrade = 1
	end
end

w,h = getScreenSize()
if w == 640 and h == 1136 then
	--require "5c"
elseif w == 768 and h == 1024 then
	--require "ipad"
elseif w == 1536 and h == 2048 then
	--require "ipadhd"
elseif w == 750 and h == 1334 then
	--require "6s"
elseif w == 1242 and h == 2208 then
	--require "6P"
elseif w == 480 and h == 854 then
	--require "480p"
elseif w == 540 and h == 960 then
	--require "540p"
elseif w == 720 and h == 1280 then
	--require "720p"
elseif w == 1080 and h == 1920 then
	--require "1080p"
else
	toast("暂不支持")
end


while (true) do
	flag = deviceIsLock()
	if flag ~= 0 then
		unlockDevice()
	end
	if frontAppBid() == "com.gamehivecorp.taptitans" then
		local t1 = os.time()
		while (true) do
			tap(w/2,h/2,10)
			--mSleep(10)
		end
	else
		runApp("com.gamehivecorp.taptitans")
	end
end