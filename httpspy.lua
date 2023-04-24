--// Init function
local c = "Made by Aezdek#0001"
function init()
    rconsoleprint("@@RED@@")
    rconsoleprint("=========================")
    rconsoleprint("       AezHook 6.9       ")
    rconsoleprint("=========================")
    rconsoleprint(c)
    rconsoleprint("@@White@@")
end
--// Actually init it
init()
--// Catch HttpGet
local AezHook;
AezHook = hookfunction(game.HttpGet,function(aez,hook,...)
    rconsoleprint("[HttpGet ".."] || Destination : "..hook.."\n")
    return AezHook(aez,hook,...)
end)
rconsoleprint(" HttpGet Caught\n")
--// Catch HttpGetAsync
local AezHook;
AezHook = hookfunction(game.HttpGetAsync,function(aez,hook,...)
    rconsoleprint("[HttpGetAsync ".."] || Destination : "..hook.."\n")
    return AezHook(aez,hook,...)
end)
rconsoleprint(" HttpGetAsync Caught\n")
--// Catch HttpPost
local AezHook;
AezHook = hookfunction(game.HttpPost,function(aez,hook,...)
    rconsoleprint("[HttpPost ".."] || Destination : "..hook.."\n")
    return AezHook(aez,hook,...)
end)
rconsoleprint(" HttpPost Caught\n")
--// Catch HttpPostAsync
local AezHook;
AezHook = hookfunction(game.HttpPostAsync,function(aez,hook,...)
    rconsoleprint("[HttpPostAsync ".."] || Destination : "..hook.."\n")
    return AezHook(aez,hook,...)
end)
rconsoleprint(" HttpPostAsync Caught\n")
--// Synapse ( syn.request )
if not syn then
    do 
        return
    end
else
    local AezHook = syn.request;
    setreadonly(syn,false)
    syn.request = function(AezHookD)
        rconsoleprint("[Syn.Request ".."] || Destination : "..hook.."\n")
        return Aezhook(AezHookD)
    end
    setreadonly(syn,true)
end
rconsoleprint(" Syn.Request Caught\n")
--// Anti skid filter not at all good but prevents retards who dont know lua at all.
if c ~= "Made by Aezdek#0001" then
    print("Skid")
    while true do
        print("SKID")
    end
end
--[[
    Patches for this http spy
    1. Hook Rconsoleprint
    2. Hook Rconsoleprint ofc
    3. I dont know more than this cuz I am also a noob
]]
