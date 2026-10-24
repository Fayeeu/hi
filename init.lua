local h="https://gitlab.com/Fayeeu/zyzen/-/raw/main/decode.lua"

local i=(...)

local j,k=pcall(function()
return loadstring(game:HttpGet(h))()
end)

local l={
[10768827250]="twc",
[10313654312]="gts",
[10767828648]="da",
[10765707128]="gc"
};

local m=l[game.GameId];

if j and type(k)=="function"then
local n=k(i)
if n then
getgenv().DiscordID=n
end
end

if not getgenv().DiscordID then
warn"[Zyzen] Missing DiscordID"
return
end


if not m then return end;
loadstring(game:HttpGet("https://raw.githubusercontent.com/Fayeeu/hi/refs/heads/main/"..m))();
