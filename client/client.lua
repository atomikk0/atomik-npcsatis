local QBCore = exports['qb-core']:GetCoreObject()


CreateThread(function()
    for _,v in pairs(Config.Blips) do
        local blip = AddBlipForCoord(v.coords.x, v.coords.y, v.coords.z)
        SetBlipSprite(blip, v.sprite)
        SetBlipDisplay(blip, 4)
        SetBlipScale(blip, v.scale)
        SetBlipAsShortRange(blip, true)
        SetBlipColour(blip, v.color)
        BeginTextCommandSetBlipName('STRING')
        AddTextComponentSubstringPlayerName(v.text)
        EndTextCommandSetBlipName(blip)
    end
end)

CreateThread(function()
    for _, v in pairs(Config.Target) do
        local zones = {}

        if v.usejob or v.usegang then
            local sourceTable = (v.usejob and v.job) or (v.usegang and v.gangs)

            if sourceTable and type(sourceTable) == "table" then
                for _, data in pairs(sourceTable) do
                    local zoneOptions = {
                        type = v.type,
                        event = v.event,
                        icon = v.icon,
                        label = v.text,
                    }

                    if v.usejob then
                        zoneOptions.job = {
                            [data.jobName] = data.minRank,
                        }
                    end

                    if v.usegang then
                        zoneOptions.gang = {
                            [data.gangName] = data.minRank,
                        }
                    end

                    table.insert(zones, zoneOptions)
                end
            end
        else
            table.insert(zones, {
                type = v.type,
                event = v.event,
                icon = v.icon,
                label = v.text,
            })
        end

        exports['qb-target']:AddCircleZone(v.label, v.coords, 0.4, {
            name = v.label,
            debugPoly = false,
        }, {
            options = zones,
            distance = v.distance,
        })
    end
end)






Citizen.CreateThread(function()
    for _,v in pairs(Config.Peds) do
        local ped_hash2 = v.ped --Ped Hash Giriniz https://wiki.rage.mp/index.php?title=Peds
    
        RequestModel(ped_hash2)
        while not HasModelLoaded(ped_hash2) do
            Wait(1)
        end
        
        ped_info2 = CreatePed(1, ped_hash2, v.coords.x, v.coords.y, v.coords.z, v.heading, false, true)
        SetBlockingOfNonTemporaryEvents(ped_info2, true) 
        SetPedDiesWhenInjured(ped_info2, false) 
        SetPedCanPlayAmbientAnims(ped_info2, true) 
        SetPedCanRagdollFromPlayerImpact(ped_info2, false) 
        SetEntityInvincible(ped_info2, true)    
        FreezeEntityPosition(ped_info2, true) 
    end
end)

for _, v in pairs(Config.Shops) do
    RegisterNetEvent(v.event, function()
        local toptanci = {
            {
                header = v.header,
                isMenuHeader = true,
            },
        }

        for _, item in pairs(v.items) do
            local menuItem = {
                header = item.label,
                txt = item.description,
                params = {
                    event = item.event,
                    args = {
                        itemName = item.itemName,
                        price = item.price,
                    }
                }
            }
            table.insert(toptanci, menuItem)
        end

        exports['qb-menu']:openMenu(toptanci)
    end)
end

RegisterNetEvent("atomik-npcsatis:adetsor", function(data)
    local dialog = exports['qb-input']:ShowInput({
        header = "Miktar Gir",
        submitText = "Sat",
        inputs = {
            { type = 'number', isRequired = true, name = 'price', text = 'Miktar' },
        }
    })
    if dialog then
        if not dialog.price then return end
        local miktar = tonumber(dialog.price)
        TriggerServerEvent("atomik-npcsatis:sat", data.itemName , miktar, data.price)
    end
end)

RegisterNetEvent("atomik-npcsatis:adetsor2", function(data)
    local dialog = exports['qb-input']:ShowInput({
        header = "Miktar Gir",
        submitText = "Sat",
        inputs = {
            { type = 'number', isRequired = true, name = 'price', text = 'Miktar' },
        }
    })
    if dialog then
        if not dialog.price then return end
        TriggerServerEvent("atomik-npcsatis:sat2", data.itemName , tonumber(dialog.price), data.price)
    end
end)

