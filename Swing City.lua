getgenv().AutoWeb = false
getgenv().MoneyFarm = false
_G.MainColor = Color3.fromRGB(255,105,180)
_G.ToggleColor = Color3.fromRGB(255,105,180)
_G.ArrowColor = Color3.fromRGB(252,251,250)
_G.SliderColor = Color3.fromRGB(255,105,180)
_G.SecondaryColor = Color3.fromRGB(255,105,180)
_G.ButtonTextColor = Color3.fromRGB(255,255,255)
_G.ButtonColor = Color3.fromRGB(255,105,180)

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("Swing City")

local b = w:CreateFolder("made by ren.#7720")

b:Toggle("Web Raper",function(bool)
  getgenv().AutoWeb = bool
    print("Raping the webs")
    if bool then
      WebRaper()
    end
end)

b:Toggle("Money Farm",function(money)
  getgenv().MoneyFarm = money
    print("Raping the maps money")
    if money then
      CashMoney()
    end
end)

b:Button("Server Raper",function()
  print("Server Raper")
  LagServer()
end)

b:Button("Remove Fog",function()
  print("Fog Raper")
  RemoveFog()
end)

b:DestroyGui()

  function WebRaper()
    spawn(function()
  while AutoWeb == true do
      wait()
  for _, HRP in pairs(workspace:GetDescendants()) do
    if HRP.ClassName == "LocalScript" and HRP.Name == "Helper" then    
      print(69)

  local args = {
      [1] = "create",
      [2] = HRP.Parent.HumanoidRootPart.Position,
      [3] = HRP.Parent.HumanoidRootPart.Position 
  }

  game:GetService("ReplicatedStorage").SwingEvent:FireServer(unpack(args))
        end
      end
    end
  end)
end

  function CashMoney()
    spawn(function()
      while MoneyFarm == true do
      wait(1)
    for _, Dollars in pairs(game:GetService("Workspace").Dollars:GetDescendants()) do
      if Dollars.Name == "DollarPickup" then
      Dollars.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
      end
     end
    end
  end)
 end              
 
  function RemoveFog()
    spawn(function()
      game.Lighting.Atmosphere:Destroy()
      game.Lighting.DepthOfField:Destroy()
      game.Lighting.ColorCorrection:Destroy()
      game.Lighting.SunRays:Destroy()
      game.Lighting.Bloom:Destroy()
    end)
  end

  function LagServer()
    spawn(function()
      for _, HRP in pairs(workspace:GetDescendants()) do
        if HRP:IsA("Part") then
            print("Part")
          
      local args = {
          [1] = "create",
          [2] = HRP.Position,
          [3] = HRP.Position 
      }
      
      game:GetService("ReplicatedStorage").SwingEvent:FireServer(unpack(args))
      
      end
      end
    end)
  end
