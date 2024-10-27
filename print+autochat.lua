print("SE VC QUER ROUBAR O CÓDIGO EU FAÇO SCRIPT SEM AMIGOS OK")

wait(0)

local TextChat = "Carregado com sucesso"

pcall(function()
    game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync(TextChat)
end)

wait(0.1)

local TextChat = "uee .autosofa para equipar o sofa em loop"

pcall(function()
    game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync(TextChat)
end)

wait(0.1)

local TextChat = "use .unsofa para parar de equipar o sofa"

pcall(function()
    game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync(TextChat)
end)

local player = game.Players.LocalPlayer
local backpack = player:WaitForChild("Backpack")
local character = player:WaitForChild("Character") or player.CharacterAdded:Wait()

local isAutoSofaActive = false -- Variável para controlar o estado do loop

local function equipCouch()
    local couchItem = backpack:FindFirstChild("Couch")
    if couchItem then
        couchItem.Parent = character
    else
        warn("Couch não encontrado na mochila.")
    end
end

-- Função que executa o loop para equipar o sofá
local function autoEquipSofa()
    while isAutoSofaActive do
        equipCouch()
        wait(0) -- Ajuste o tempo de espera conforme necessário
    end
end

-- Evento que detecta mensagens no chat
player.Chatted:Connect(function(message)
    if message == ".autosofa" then
        if not isAutoSofaActive then
            isAutoSofaActive = true
            autoEquipSofa() -- Inicia o loop de equipar o sofá
        end
    elseif message == ".unsofa" then
        isAutoSofaActive = false -- Para o loop
    end
end)
