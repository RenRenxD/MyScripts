getgenv().fuckupyourself = false

_G.MainColor = Color3.fromRGB(255, 105, 180)
_G.ToggleColor = Color3.fromRGB(255, 105, 180)
_G.ArrowColor = Color3.fromRGB(252, 251, 250)
_G.SliderColor = Color3.fromRGB(255, 105, 180)
_G.SecondaryColor = Color3.fromRGB(255, 105, 180)
_G.ButtonTextColor = Color3.fromRGB(255, 255, 255)
_G.ButtonColor = Color3.fromRGB(255, 105, 180)




function Callback(answer)
--dont claim it as your's if you use it you fucking rat bitch retard
if answer == "Yes" then
local library = loadstring(game:HttpGet(("https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua")))()

local w = library:CreateWindow("Swingin Spiderman")

local b = w:CreateFolder("made by ren !#1327")

b:Toggle(
    "Web sex",
    function(bool)
        getgenv().fuckupyourself = bool
        print("Sexing the webs")
        if bool then
            fuckupyourselfpart2()
        end
    end
)

function fuckupyourselfpart2()
    spawn(
        function()
            while fuckupyourself and wait() do
                for _, Player in pairs(game.Players:GetPlayers()) do
                    local args = {
                        [1] = "FlyWebRightHand",
                        [2] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("WebShooter lvl5").Web2SlingLocalScript,
                        [3] = Player.Character.HumanoidRootPart.Position
                    }

                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("WebShooter lvl5").WebRemoteEvent:FireServer(
                        unpack(args)
                    )
                    
                                  local args = {
                        [1] = "FlyWebLeftHand",
                        [2] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("WebShooter lvl5").Web2SlingLocalScript,
                        [3] = Player.Character.HumanoidRootPart.Position
                    }

                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("WebShooter lvl5").WebRemoteEvent:FireServer(
                        unpack(args)
                    )
                    
                    
                end
            end
        end
    )
end
b:DestroyGui()

elseif answer == "No" then
    game.Players.LocalPlayer:Kick("Fuck off retard, not my fault u have autism u cunt")
end
end

local Bindable = Instance.new("BindableFunction")
Bindable.OnInvoke = Callback

local StarterGui = game:GetService("StarterGui")

StarterGui:SetCore("SendNotification", {
    Title = "shit script by ren !#1327";
    Text = "Thanks for using my script V0.1, appreciated babe, don't skid or claim as your own, press yes if you agree",
    Callback = Bindable,
    Duration = 120,
    Button1 = "Yes",
    Button2 = "No"
})
