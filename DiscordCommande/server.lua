RegisterServerEvent("sUtils:Coords")
AddEventHandler("sUtils:Coords", function(x,y,z,h) 
	SendUrl("Coords !",""..x..", "..y..", "..z..", "..h.."", 0, Config.Wbk)
end)

function SendUrl(name,message,color,url)
    local wbk = url
	local embeds = {
		{
			["title"]= message,
			["type"]= "rich",
			["color"] = color,
			["footer"]=  {
			["text"]= "Sawney le bg",
			},
		}
	}
    if message == nil or message == '' then return FALSE end
    PerformHttpRequest(wbk, function(err, text, headers) end, 'POST', json.encode({ username = name,embeds = embeds}), { ['Content-Type'] = 'application/json' })
end
