b = Instance.new("Hint")
b.Text = "Support Gui Is Disabled. Cuz too much offtop and webhooks always get nuked"
b.Name = "HintGui"
b.Parent = game:GetService("CoreGui")
task.wait(5)
pcall(function()
b:Destroy()
end)
return

pcall(function()
local a = Instance.new("Hint")
a.Text = "Support Gui Loading..."
a.Name = "HintGui"
a.Parent = game.CoreGui
end)
pcall(function()
getgenv().gethui = function() return game:GetService("CoreGui") end
gethui = function() return game:GetService("CoreGui") end
end)
pcall(function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Pro666Pro/BypassAntiCheat/main/main.lua'))()
end)
local success, error = pcall(function()
Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
end)
if success then
print("Loaded New Rayfield")
Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
elseif not success then
print("Loaded Old Rayfield")
Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/SiriusSoftwareLtd/Rayfield/main/source.lua'))()
end

RequireService = cloneref or function(clone) return clone end
game = game or Ugc
Players = RequireService(game:GetService("Players"))
Player = Players.LocalPlayer
ReplicatedStorage = RequireService(game:GetService("ReplicatedStorage"))
ReplicatedFirst = RequireService(game:GetService("ReplicatedFirst"))
UserInputService = RequireService(game:GetService("UserInputService"))
Stats = RequireService(game:GetService("Stats"))
HttpService = RequireService(game:GetService("HttpService"))

function isprem()
    local prem = "No"
    if game:GetService("MarketplaceService"):UserOwnsGamePassAsync(game.Players.LocalPlayer.UserId,1016382904) then
        prem = "Yes"
    end
    return prem
end

function getusername()
    return Player.Name
end

function getuserid()
    return Player.UserId
end

function getping()
    return math.round(Stats.Network.ServerStatsItem["Data Ping"]:GetValue())
end

function getexecutor()
    local ex = identifyexecutor()
    if ex == "NX" then
       ex = "Luna"
    end
    return ex
end

function getwebhook()
    local webhook = loadstring(game:HttpGet('https://raw.githubusercontent.com/Pro666Pro/OpenSourceScripts/refs/heads/main/Forsaken/Http/Webhook.dll'))()
    return webhook
end

function getdevice()
    local dev = "Unknown"
    local dev_choosen = false
    if UserInputService.KeyboardEnabled and dev_choosen ~= true then
        dev = "PC"
        dev_choosen = true
    elseif UserInputService.GamepadEnabled and dev_choosen ~= true then
        dev = "Gamepad"
        dev_choosen = true
    elseif UserInputService.TouchEnabled and dev_choosen ~= true then
        dev = "Mobile"
        dev_choosen = true
    end
    return dev
end

function getscript()
    if _G.Script ~= "Unknown" then
        return _G.Script
    end
end

function getmsgtype()
    if _G.MessageType ~= "Unknown" then
        return _G.MessageType
    end
end

function getmsg()
    if _G.Message ~= "Unknown" then
        return _G.Message
    end
end

function generateticketid()
    local ticket = math.random(0,999999999)
    return ticket
end

function ttostring(tbl)
    if type(tbl) == "table" then
        local result
        for i, v in ipairs(tbl) do
            result = tostring(v)
            if i < #tbl then
                 result = result .. ", "
            end
        end
        result = result
        return result
    else
        return tbl
    end
end

Window = Rayfield:CreateWindow({
   Name = "Support Gui - nexer scripts",
   Icon = 0,    
   LoadingTitle = "Support Gui",
   LoadingSubtitle = "by nexer",
   Theme = "Amethyst",
   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false,

   ConfigurationSaving = {
      Enabled = false,
      FolderName = "SlapFarmGui",
      FileName = "SlapFarmGuiConfiguration"
   },

   Discord = {
      Enabled = false,
      Invite = "noinvitelink",
      RememberJoins = true
   },

   KeySystem = false,
   KeySettings = {
      Title = "Verify yourself firstly!",
      Subtitle = "Key Needed!",
      Note = "The key is ''cheese''",
      FileName = "Key",
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = {"cheese"}
   }
})


function Notify(title, content, time, mode)
time = time or 10
mode = mode or false
if mode == true then
img = 136186846844342
elseif mode == false then
img = 71508738660632
end
Rayfield:Notify({
	Title = title,
	Content = content,
	Duration = time,
	Image = img,
	Actions = {},
})
end

local Main = Window:CreateTab("Main", 98952570395426)
local FeedbackLog = Window:CreateTab("Feedback Log", 98952570395426)
local Other = Window:CreateTab("Other", 12809025337)

local FeedBackLabel_62730961 = FeedbackLog:CreateLabel("Ticket 62730961")
local FeedbackParagraph_62730961 = FeedbackLog:CreateParagraph({Title = "Status: Fixed ✅", Content = "Message: ''cant exec the sfg in the dark realm thingy'' Payout: 0 robux"})

local FeedBackLabel_956961203 = FeedbackLog:CreateLabel("Ticket 956961203")
local FeedbackParagraph_956961203 = FeedbackLog:CreateParagraph({Title = "Status: Being Fixed ⚙️", Content = "Message: ''after some time using engineer mastery farm it kick you ''iamgine exploiting hahahahaha'' '' Payout: 5 robux"})

local FeedBackLabel_930923740 = FeedbackLog:CreateLabel("Ticket 930923740")
local FeedbackParagraph_930923740 = FeedbackLog:CreateParagraph({Title = "Status: Being Fixed ⚙️", Content = "Message: ''after farming engineer mastery (baller and blink methods) actually kicks you ''imagine exploiting hahahahaha'' '' Payout: 5 robux"})

local FeedBackLabel_911164034 = FeedbackLog:CreateLabel("Ticket 911164034")
local FeedbackParagraph_911164034 = FeedbackLog:CreateParagraph({Title = "Status: Not Fixable / Patched ❌", Content = "Message: ''the grab all items in slap royale dosent work it like brings you to them but it dosent grab them neither does it show you the option to grab it'' Payout: 0 robux"})

local FeedBackLabel_113617683 = FeedbackLog:CreateLabel("Ticket 113617683")
local FeedbackParagraph_113617683 = FeedbackLog:CreateParagraph({Title = "Status: Not Script Issue ❔", Content = "Message: ''Like whenever I do tthe relied glove in the boss fight the guide battle is buggy and it doesn’t damage the boss'' Way to fix: Your internet connection is not stable. Make sure you're not using mcdonald's wifi! /j"})

local FeedBackLabel_727635847 = FeedbackLog:CreateLabel("Ticket 727635847")
local FeedbackParagraph_727635847 = FeedbackLog:CreateParagraph({Title = "Status: Not Script Issue ❔", Content = "Message: ''i can't get badge in ice trial'' Way to fix: Make sure there's ice issence! If there's no, just rejoin to get frostbite!"})

local FeedBackLabel_877543 = FeedbackLog:CreateLabel("Ticket 877543")
local FeedbackParagraph_877543 = FeedbackLog:CreateParagraph({Title = "Status: Not Script Issue ❔", Content = "Message: ''Hey in Druid TTS the script doesn’t work'' Way to fix: Sorry, but there's no support to druid/scythe tds yet!"})

local FeedBackLabel_149529232 = FeedbackLog:CreateLabel("Ticket 149529232")
local FeedbackParagraph_149529232 = FeedbackLog:CreateParagraph({Title = "Status: Fixed ✅", Content = "Message: ''Hello, how soon will Gui's Weak Farm be fixed?'' Payout: 57 robux"})

local FeedBackLabel_1 = FeedbackLog:CreateLabel("Ticket 1")
local FeedbackParagraph_1 = FeedbackLog:CreateParagraph({Title = "Status: Fixed ✅", Content = "Message: ''PLACEHOLDER'' Payout: 0 robux"})


local ScriptLabel = Main:CreateLabel("Choose script here!")
_G.Script = "Unknown"
local ScriptDropdown = Main:CreateDropdown({
   Name = "Choose Version",
   Options = {"Ultimate Badge Hub","Slap Farm Gui","Mastery Farm Gui"},
   CurrentOption = "Unknown",
   MultiSelection = false,
   Callback = function(Option)
_G.Script = ttostring(Option)
Notify("Success", ""..ttostring(Option).." choosen!", 4, true)
   end,
})

local CategoryLabel = Main:CreateLabel("Choose category here!")
_G.MessageType = "Unknown"
local CategoryDropdown = Main:CreateDropdown({
   Name = "Choose Category",
   Options = {"Bug Report","Suggestion"},
   CurrentOption = "Unknown",
   MultiSelection = false,
   Callback = function(Option)
_G.MessageType = ttostring(Option)
Notify("Success", ""..ttostring(Option).." choosen!", 4, true)
   end,
})

local MessageLabel = Main:CreateLabel("Write message here!")
_G.Message = "Unknown"
local MessageTextbox = Main:CreateInput({
   Name = "Write Message",
   PlaceholderText = "Input...",
   NumbersOnly = false,
   OnEnter = true,
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
_G.Message = Text
Notify("Success", "Message written!", 4, true)
   end,
})

_G.ArleadyBeingSent = false
local MainButton = Main:CreateButton({
   Name = "Send Message",
   Callback = function()
if _G.ArleadyBeingSent ~= true then
_G.ArleadyBeingSent = true
local success, error = pcall(function()
Notify("Success", "Sending message...", 10, true)

--[[
please do not nuke my webhook, i did nothing wrong 🥺

Which things this webhook logs?
It only logs:
Your device ( need to fix bugs )
Your ping ( also need to fix bugs )
Your executor ( this also need to fix bugs )
Your username and userid ( for feedback )
That's all! So please don't nuke it 😽
]]--

ticketID = generateticketid()
req = request or http_request or HttpPost or (syn and syn.request) or (http and http.request) or (fluxus and fluxus.request) or (game and game.HttpPost)
if req then
local data = {
    ["username"] = "Support Bot",
    ["avatar_url"] = "https://i.imgur.com/a/SbPHgnH",
    ["content"] = "@everyone **NEW MESSAGE!** Script: "..getscript().."",
    ["embeds"] = {
       {
           ["title"] = "Category: "..getmsgtype().."",
           ["description"] = "Message: "..getmsg().."",    
           ["type"] = "rich",
           ["color"] = 1000000,
           ["footer"] = {
             ["text"] = ""..ticketID.."",
           },
       },
       {
           ["title"] = "More Information ( For Feedback )",
           ["description"] = "Device: "..getdevice()..". Ping: "..getping()..". Executor: "..getexecutor()..". Roblox Profile: [Click](https://www.roblox.com/users/"..getuserid().."/profile)",    
           ["type"] = "rich",
           ["color"] = 1000000,
           ["footer"] = {
             ["text"] = ""..getusername().."",
           },
       },
   }
}
print("Sending Your Message...")
local url = getwebhook()
local datab = game:GetService("HttpService"):JSONEncode(data)
local head = {
    ["content-type"] = "application/json"
}
req({Url = url, Body = datab, Method = "POST", Headers = head})
print("Sent!")
end

local success, error = pcall(function()
setclipboard(tostring(ticketID))
end)
if success then
Notify("Success", "Message sent! Your ticket ID has been copied to clipboard!", 10, true)
elseif not success then
Notify("Success", "Message sent! Your ticket ID: "..ticketID.."", 10, true)
end

task.delay(60, function()
_G.ArleadyBeingSent = false
end)

end)
if not success then
_G.ArleadyBeingSent = false
Notify("Error", "Message has not been sent. Possible errors: webhook is down or you didn't choose category/script or you didn't wrote message. Check console for more detailed info!")
print(error)
end
else
Notify("Error", "You're sending messages too fast! Please wait a bit.", 5)
end
   end,
})

local CloseHubButton = Other:CreateButton({
   Name = "Close Launcher",
   Callback = function()
Rayfield:Destroy()
   end,
})

pcall(function()
game.CoreGui:FindFirstChild("HintGui"):Destroy()
end)
