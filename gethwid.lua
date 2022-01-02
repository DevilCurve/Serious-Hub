
			local url = tostring("https://discord.com/api/webhooks/910706058564104342/jmzMYnloqjNMbl-Z_V7R79wCQuj_v_Go2e-HxHpocOd194NtyIYYGyYG3jEJ_1Of-CNy")
			RigC = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
			
				
			local data = {

				["embeds"] = {
					{
						["title"] = "**HwidWebhook!**",
						["description"] = "Username : ".. game.Players.LocalPlayer.Name.. " HWID : ".. tostring(game:GetService("RbxAnalyticsService"):GetClientId()),
						["type"] = "rich",
						["color"] = tonumber(0x899314),
					}
				}
			} 
			local newdata = game:GetService("HttpService"):JSONEncode(data)
			
			local headers = {
				["content-type"] = "application/json"
			}
			request = http_request or request or HttpPost or syn.request
			local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
			request(abcdef)
