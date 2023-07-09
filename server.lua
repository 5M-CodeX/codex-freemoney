NDCore = exports["ND_Core"]:GetCoreObject()
local lastUsedTime = {}

RegisterCommand(Config.cmd, function(source, args, rawCommand)
    local playerId = source
    local currentTime = os.time()

    if lastUsedTime[playerId] and lastUsedTime[playerId] + Config.cooldownDuration > currentTime then
        local remainingCooldown = lastUsedTime[playerId] + Config.cooldownDuration - currentTime
        local cooldownMessage = string.format(Config.cooldownMessage, remainingCooldown)
        TriggerClientEvent("chat:addMessage", playerId, { args = { cooldownMessage } })
        return
    end

    -- Add money to the player's bank
    NDCore.Functions.AddMoney(Config.moneyAmount, playerId, "bank", Config.bankStatement)

    lastUsedTime[playerId] = currentTime
    TriggerClientEvent("chat:addMessage", playerId, { args = { Config.successMessage } })
end, false)
