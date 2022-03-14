getgenv().fuckupyourself = false

_G.MainColor = Color3.fromRGB(255, 105, 180)
_G.ToggleColor = Color3.fromRGB(255, 105, 180)
_G.ArrowColor = Color3.fromRGB(252, 251, 250)
_G.SliderColor = Color3.fromRGB(255, 105, 180)
_G.SecondaryColor = Color3.fromRGB(255, 105, 180)
_G.ButtonTextColor = Color3.fromRGB(255, 255, 255)
_G.ButtonColor = Color3.fromRGB(255, 105, 180)

local library = loadstring(game:HttpGet(("https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua")))()

local w = library:CreateWindow("Swingin Spiderman")

local b = w:CreateFolder("made by ren !#1327")
b:DestroyGui()

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
                end
            end
        end
    )
end
