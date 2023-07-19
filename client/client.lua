local QBCore = exports['qb-core']:GetCoreObject()


CreateThread(function()
    local blip = AddBlipForCoord(1755.09, -1649.48, 111.618)
    SetBlipSprite(blip, 431)
    SetBlipDisplay(blip, 4)
    SetBlipScale(blip, 0.7)
    SetBlipAsShortRange(blip, true)
    SetBlipColour(blip, 5)
    BeginTextCommandSetBlipName('STRING')
    AddTextComponentSubstringPlayerName("Toptancı")
    EndTextCommandSetBlipName(blip)
end)

CreateThread(function(data)
    exports['qb-target']:AddCircleZone("Toptanci", vector3(1755.09, -1649.48, 111.618), 0.4, { 
      name = "Toptanci", 
      debugPoly = false,
    }, {
      options = {
          {
              type = "client",
              event = "atomik-npcsatis:toptanci",
              icon = "fas fa-circle",
              label = "Toptancı",
          },
      },
      distance = 4.0
    })
end)

CreateThread(function(data)
    exports['qb-target']:AddCircleZone("illegalToptanci", vector3(-1903.6, -573.0, 22.97), 0.4, { 
      name = "illegalToptanci", 
      debugPoly = false,
    }, {
      options = {
          {
              type = "client",
              event = "atomik-npcsatis:illegaltoptanci",
              icon = "fas fa-circle",
              label = "İllegal Toptancı",
          },
      },
      distance = 4.0
    })
end)

CreateThread(function(data)
    exports['qb-target']:AddCircleZone("illegalTacir", vector3(485.35, -3383.72, 6.07), 0.4, { 
      name = "illegalTacir", 
      debugPoly = false,
    }, {
      options = {
          {
              type = "client",
              event = "atomik-npcsatis:illegaltacir",
              icon = "fas fa-circle",
              label = "İllegal Tacir",
          },
      },
      distance = 4.0
    })
end)

Citizen.CreateThread(function()

    local ped_hash2 = 0x94562DD7 --Ped Hash Giriniz https://wiki.rage.mp/index.php?title=Peds
    
    RequestModel(ped_hash2)
    while not HasModelLoaded(ped_hash2) do
        Wait(1)
    end
    
    ped_info2 = CreatePed(1, ped_hash2, 1755.09, -1649.48, 111.618, 225.4625549316406, false, true)
    SetBlockingOfNonTemporaryEvents(ped_info2, true) 
    SetPedDiesWhenInjured(ped_info2, false) 
    SetPedCanPlayAmbientAnims(ped_info2, true) 
    SetPedCanRagdollFromPlayerImpact(ped_info2, false) 
    SetEntityInvincible(ped_info2, true)    
    FreezeEntityPosition(ped_info2, true) 
end)

Citizen.CreateThread(function()

    local ped_hash2 = 0xB594F5C3 --Ped Hash Giriniz https://wiki.rage.mp/index.php?title=Peds
    
    RequestModel(ped_hash2)
    while not HasModelLoaded(ped_hash2) do
        Wait(1)
    end
    
    ped_info2 = CreatePed(1, ped_hash2, -1903.6, -573.0, 21.97, 220.4625549316406, false, true)
    SetBlockingOfNonTemporaryEvents(ped_info2, true) 
    SetPedDiesWhenInjured(ped_info2, false) 
    SetPedCanPlayAmbientAnims(ped_info2, true) 
    SetPedCanRagdollFromPlayerImpact(ped_info2, false) 
    SetEntityInvincible(ped_info2, true)    
    FreezeEntityPosition(ped_info2, true) 
end)

Citizen.CreateThread(function()

    local ped_hash2 = 0xF0EC56E2 --Ped Hash Giriniz https://wiki.rage.mp/index.php?title=Peds
    
    RequestModel(ped_hash2)
    while not HasModelLoaded(ped_hash2) do
        Wait(1)
    end
    
    ped_info2 = CreatePed(1, ped_hash2, 485.35, -3383.72, 5.07, 0, false, true)
    SetBlockingOfNonTemporaryEvents(ped_info2, true) 
    SetPedDiesWhenInjured(ped_info2, false) 
    SetPedCanPlayAmbientAnims(ped_info2, true) 
    SetPedCanRagdollFromPlayerImpact(ped_info2, false) 
    SetEntityInvincible(ped_info2, true)    
    FreezeEntityPosition(ped_info2, true) 
end)

RegisterNetEvent('atomik-npcsatis:toptanci', function()
        local toptanci = {
            {
                header = "Toptancı",
                isMenuHeader = true,
            },
            {
                header = "Üzüm (30$)",
                txt = "",
                params = {
                    event = 'atomik-npcsatis:adetsor',
                    args = {
                        itemName = "grape",
                        price = 30
                    }
                }
            },
            {
                header = "Kereste (15$)",
                txt = "",
                params = {
                    event = 'atomik-npcsatis:adetsor',
                    args = {
                        itemName = "kereste",
                        price = 15
                    }
                }
            },
            {
                header = "Paketlenmiş Tavuk (30$)",
                txt = "",
                params = {
                    event = 'atomik-npcsatis:adetsor',
                    args = {
                        itemName = "packaged_chicken",
                        price = 30
                    }
                }
            },
            {
                header = "Çelik (5$)",
                txt = "",
                params = {
                    event = 'atomik-npcsatis:adetsor',
                    args = {
                        itemName = "steel",
                        price = 5
                    }
                }
            },
            {
                header = "Kauçuk (5$)",
                txt = "",
                params = {
                    event = 'atomik-npcsatis:adetsor',
                    args = {
                        itemName = "rubber",
                        price = 5
                    }
                }
            },
            {
                header = "Bakır (5$)",
                txt = "",
                params = {
                    event = 'atomik-npcsatis:adetsor',
                    args = {
                        itemName = "copper",
                        price = 5
                    }
                }
            },
            {
                header = "Cam (5$)",
                txt = "",
                params = {
                    event = 'atomik-npcsatis:adetsor',
                    args = {
                        itemName = "glass",
                        price = 5
                    }
                }
            },
            {
                header = "Plastik (5$)",
                txt = "",
                params = {
                    event = 'atomik-npcsatis:adetsor',
                    args = {
                        itemName = "plastic",
                        price = 5
                    }
                }
            },
            {
                header = "Demir (5$)",
                txt = "",
                params = {
                    event = 'atomik-npcsatis:adetsor',
                    args = {
                        itemName = "iron",
                        price = 5
                    }
                }
            },
            {
                header = "Metal Hurda (5$)",
                txt = "",
                params = {
                    event = 'atomik-npcsatis:adetsor',
                    args = {
                        itemName = "metalscrap",
                        price = 5
                    }
                }
            },
            {
                header = "Süt (30$)",
                txt = "",
                params = {
                    event = 'atomik-npcsatis:adetsor',
                    args = {
                        itemName = "milk",
                        price = 30
                    }
                }
            },
            {
                header = "Mısır (5$)",
                txt = "",
                params = {
                    event = 'atomik-npcsatis:adetsor',
                    args = {
                        itemName = "corncob",
                        price = 5
                    }
                }
            }
        }
        exports['qb-menu']:openMenu(toptanci)
end)

RegisterNetEvent('atomik-npcsatis:illegaltoptanci', function()
    local toptanci = {
        {
            header = "İllegal Toptancı",
            isMenuHeader = true,
        },
        {
            header = "Elmas Yüzük (1000$)",
            txt = "",
            params = {
                event = 'atomik-npcsatis:adetsor',
                args = {
                    itemName = "diamond_ring",
                    price = 1000
                }
            }
        },
        {
            header = "Elmas (1000$)",
            txt = "",
            params = {
                event = 'atomik-npcsatis:adetsor',
                args = {
                    itemName = "diamond",
                    price = 1000
                }
            }
        },
    }
    exports['qb-menu']:openMenu(toptanci)
end)

RegisterNetEvent('atomik-npcsatis:illegaltacir', function()
    local toptanci = {
        {
            header = "İllegal Tacir",
            isMenuHeader = true,
        },
        {
            header = "Paketlenmiş Kokain * (60$)",
            txt = "",
            params = {
                event = 'atomik-npcsatis:adetsor',
                args = {
                    itemName = "package-coke-bad-ql",
                    price = 60
                }
            }
        },
        {
            header = "Paketlenmiş Kokain ** (70$)",
            txt = "",
            params = {
                event = 'atomik-npcsatis:adetsor',
                args = {
                    itemName = "package-coke-med-ql",
                    price = 70
                }
            }
        },
        {
            header = "Paketlenmiş Kokain *** (80$)",
            txt = "",
            params = {
                event = 'atomik-npcsatis:adetsor',
                args = {
                    itemName = "package-coke-max-ql",
                    price = 80
                }
            }
        },
        {
            header = "Paketlenmiş Ot * (60$)",
            txt = "",
            params = {
                event = 'atomik-npcsatis:adetsor',
                args = {
                    itemName = "package-weed-bad-ql",
                    price = 60
                }
            }
        },
        {
            header = "Paketlenmiş Ot ** (70$)",
            txt = "",
            params = {
                event = 'atomik-npcsatis:adetsor',
                args = {
                    itemName = "package-weed-med-ql",
                    price = 70
                }
            }
        },
        {
            header = "Paketlenmiş Ot *** (80$)",
            txt = "",
            params = {
                event = 'atomik-npcsatis:adetsor',
                args = {
                    itemName = "package-weed-max-ql",
                    price = 80
                }
            }
        },
        {
            header = "Paketlenmiş Afyon * (60$)",
            txt = "",
            params = {
                event = 'atomik-npcsatis:adetsor',
                args = {
                    itemName = "package-opium-bad-ql",
                    price = 60
                }
            }
        },
        {
            header = "Paketlenmiş Afyon ** (70$)",
            txt = "",
            params = {
                event = 'atomik-npcsatis:adetsor',
                args = {
                    itemName = "package-opium-med-ql",
                    price = 70
                }
            }
        },
        {
            header = "Paketlenmiş Afyon *** (80$)",
            txt = "",
            params = {
                event = 'atomik-npcsatis:adetsor',
                args = {
                    itemName = "package-opium-max-ql",
                    price = 80
                }
            }
        },
        {
            header = "Meth (100$)",
            txt = "",
            params = {
                event = 'atomik-npcsatis:adetsor',
                args = {
                    itemName = "meth",
                    price = 100
                }
            }
        },
    }
    exports['qb-menu']:openMenu(toptanci)
end)

RegisterNetEvent("atomik-npcsatis:adetsor", function(data)
    local dialog = exports['qb-input']:ShowInput({
        header = "Miktar Gir",
        submitText = "Sat",
        inputs = {
            { type = 'number', isRequired = true, name = 'price', text = 'Miktar' },
        }
    })
    local miktar = tonumber(dialog.price)
    if dialog then
        if not dialog.price then return end
        local miktar = tonumber(dialog.price)
        TriggerServerEvent("atomik-npcsatis:sat", data.itemName , miktar, data.price)
    end
end)


