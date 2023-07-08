NDCore = exports["ND_Core"]:GetCoreObject()
local cooldownDuration = 3600 -- Cooldown duration in seconds
local lastUsedTime = {}

RegisterCommand("freemoney", function(source, args, rawCommand)
    local playerId = source
    local currentTime = os.time()

    if lastUsedTime[playerId] and lastUsedTime[playerId] + cooldownDuration > currentTime then
        TriggerClientEvent("chat:addMessage", playerId, { args = { "^1You can only use this command once every hour." } })
        return
    end

    -- Add money to the player's bank
    NDCore.Functions.AddMoney(1000, playerId, "bank", "free money") -- Change the amount as needed

    lastUsedTime[playerId] = currentTime
    TriggerClientEvent("chat:addMessage", playerId, { args = { "^2You received some free money!" } })
end, false)
