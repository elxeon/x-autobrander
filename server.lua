ESX.RegisterServerCallback("x-autobrander:checkinv", function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)
    local hoeveel = xPlayer.getInventoryItem(item)
    if hoeveel == nil then
        cb(0)
    else
        cb(hoeveel.count)
    end
end)