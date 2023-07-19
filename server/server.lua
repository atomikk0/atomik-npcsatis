local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent("atomik-npcsatis:sat")
AddEventHandler("atomik-npcsatis:sat", function(data, miktar, price)
    local Player = QBCore.Functions.GetPlayer(source)
    local itemname = tostring(data)
    local para = tonumber(price)
    local item = Player.Functions.GetItemByName(itemname)
    local amount = miktar * price

    if item and item.amount >= miktar then
        if Player.Functions.RemoveItem(itemname, miktar) then
            Player.Functions.AddMoney('cash', amount, "Toptancı")
        end
    else
        TriggerClientEvent('QBCore:Notify', source, 'Üzerinde o kadar item yok.')
    end
end)