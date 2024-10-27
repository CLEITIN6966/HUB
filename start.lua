-- Carrega e executa o script da URL 1
local url = "https://raw.githubusercontent.com/CLEITIN6966/HUB/refs/heads/main/print%2Bautochat.lua"
local response = game:HttpGet(url, true)
loadstring(response)()

wait(0.1)

-- Carrega e executa o script da URL 2
local url = "https://raw.githubusercontent.com/CLEITIN6966/HUB/refs/heads/main/2.lua"
local response = game:HttpGet(url, true)
loadstring(response)()
