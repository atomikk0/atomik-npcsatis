Config = {}

Config.Peds = {
    [1] = { coords = vector3(-485.3, 276.71, 82.32), heading = 174.16, ped = 0xA956BD9E},
    [2] = { coords = vector3(1755.09, -1649.48, 111.618), heading = 255.46, ped = 0x94562DD7},
    [3] = { coords = vector3(-1903.6, -573.0, 21.97), heading = 220.46, ped = 0xB594F5C3},
    [4] = { coords = vector3(485.35, -3383.72, 5.07), heading = 0.1, ped = 0xF0EC56E2},
}

Config.Blips = {
    [1] = { coords = vector3(1755.09, -1649.48, 111.618), sprite = 431, color = 5, scale = 0.7, text = "Toptancı"},
    [2] = { coords = vector3(-485.3, 276.71, 82.32), sprite = 402, color = 1, scale = 0.7, text = "Hırdavatçı"},
    [3] = { coords = vector3(921.7025, 47.51683, 81.096), sprite = 679, color = 0, scale = 0.7, text = "Diamond Casino"},
}

Config.Target = {
    [1] = {
        coords = vector3(1755.09, -1649.48, 111.618),
        type = "client",
        event = "atomik-npcsatis:toptanci",
        icon = "fas fa-circle",
        label = "Toptanci",
        distance = 4.0,
        usegang = false,
        gangs = {
            [1] = {
                gangName = "ballas",
                minRank = 0,
            },
            [2] = {
                gangName = "vagos",
                minRank = 0,
            },
        },
        usejob = false,
        job = {
            [1] = {
                jobName = "police",
                minRank = 0,
            },
            [2] = {
                jobName = "ambulance",
                minRank = 2,
            },
        },
        text = "Toptancı"
    },
    [2] = {
        coords = vector3(485.35, -3383.72, 6.07),
        type = "client",
        event = "atomik-npcsatis:illegaltacir",
        icon = "fas fa-circle",
        label = "illegalTacir",
        distance = 2.5,
        usegang = false,
        gangs = {
            [1] = {
                gangName = "ballas",
                minRank = 0,
            },
            [2] = {
                gangName = "vagos",
                minRank = 0,
            },
        },
        usejob = false,
        job = {
            [1] = {
                jobName = "police",
                minRank = 0,
            },
            [2] = {
                jobName = "ambulance",
                minRank = 2,
            },
        },
        text = "İllegal Tacir"
    },
    [3] = {
        coords = vector3(-485.3, 276.71, 82.32),
        type = "client",
        event = "atomik-npcsatis:hirdavatci",
        icon = "fas fa-circle",
        label = "Hirdavatci",
        distance = 4.0,
        usegang = false,
        gangs = {
            [1] = {
                gangName = "ballas",
                minRank = 0,
            },
            [2] = {
                gangName = "vagos",
                minRank = 0,
            },
        },
        usejob = false,
        job = {
            [1] = {
                jobName = "police",
                minRank = 0,
            },
            [2] = {
                jobName = "ambulance",
                minRank = 2,
            },
        },
        text = "Hırdavatçı"
    },
    [4] = {
        coords = vector3(-1903.6, -573.0, 22.97),
        type = "client",
        event = "atomik-npcsatis:illegaltoptanci",
        icon = "fas fa-circle",
        label = "illegalToptanci",
        distance = 4.0,
        usegang = false,
        gangs = {
            [1] = {
                gangName = "ballas",
                minRank = 0,
            },
            [2] = {
                gangName = "vagos",
                minRank = 0,
            },
        },
        usejob = false,
        job = {
            [1] = {
                jobName = "police",
                minRank = 0,
            },
            [2] = {
                jobName = "ambulance",
                minRank = 2,
            },
        },
        text = "İllegal Toptancı"
    },
}

Config.Shops = {
    [1] = {
        event = "atomik-npcsatis:toptanci",
        header = "Toptanci",
        items = {
            [1] = {
                label = "Üzüm (7$)",
                description = "",
                itemName = "grape",
                price = 7,
                event = "atomik-npcsatis:adetsor",
            },
            [2] = {
                label = "Kereste (15$)",
                description = "",
                itemName = "kereste",
                price = 15,
                event = "atomik-npcsatis:adetsor",
            },
            [3] = {
                label = "Paketlenmiş Tavuk (30$)",
                description = "",
                itemName = "packagedchicken",
                price = 30,
                event = "atomik-npcsatis:adetsor",
            },
            [4] = {
                label = "Çelik (5$)",
                description = "",
                itemName = "steel",
                price = 5,
                event = "atomik-npcsatis:adetsor",
            },
            [5] = {
                label = "Kauçuk (5$)",
                description = "",
                itemName = "rubber",
                price = 5,
                event = "atomik-npcsatis:adetsor",
            },
            [6] = {
                label = "Bakır (5$)",
                description = "",
                itemName = "copper",
                price = 5,
                event = "atomik-npcsatis:adetsor",
            },
            [7] = {
                label = "Cam (5$)",
                description = "",
                itemName = "glass",
                price = 5,
                event = "atomik-npcsatis:adetsor",
            },
            [8] = {
                label = "Plastik (5$)",
                description = "",
                itemName = "plastic",
                price = 5,
                event = "atomik-npcsatis:adetsor",
            },
            [9] = {
                label = "Demir (5$)",
                description = "",
                itemName = "iron",
                price = 5,
                event = "atomik-npcsatis:adetsor",
            },
            [10] = {
                label = "Metal Hurda (5$)",
                description = "",
                itemName = "metalscrap",
                price = 5,
                event = "atomik-npcsatis:adetsor",
            },
            [11] = {
                label = "Geyik Derisi (25$)",
                description = "",
                itemName = "geyikderisi",
                price = 25,
                event = "atomik-npcsatis:adetsor",
            },
            [12] = {
                label = "Geyik Eti (25$)",
                description = "",
                itemName = "geyiketi",
                price = 25,
                event = "atomik-npcsatis:adetsor",
            },
        },
    },
    [2] = {
        event = "atomik-npcsatis:hirdavatci",
        header = "Hırdavatçı",
        items = {
            [1] = {
                label = "Motor (600$)",
                description = "",
                itemName = "car_engine",
                price = 600,
                event = "atomik-npcsatis:adetsor2",
            },
            [2] = {
                label = "Tekerlek (600$)",
                description = "",
                itemName = "car_wheels",
                price = 600,
                event = "atomik-npcsatis:adetsor2",
            },
            [3] = {
                label = "Kapı (600$)",
                description = "",
                itemName = "car_doors",
                price = 600,
                event = "atomik-npcsatis:adetsor2",
            },
            [4] = {
                label = "Araç Camı (600$)",
                description = "",
                itemName = "car_windows",
                price = 600,
                event = "atomik-npcsatis:adetsor2",
            },
            [5] = {
                label = "Kaput (600$)",
                description = "",
                itemName = "capo_car",
                price = 600,
                event = "atomik-npcsatis:adetsor2",
            },
            [6] = {
                label = "Tampon (600$)",
                description = "",
                itemName = "car_bumper",
                price = 600,
                event = "atomik-npcsatis:adetsor2",
            },
            [7] = {
                label = "Jant (600$)",
                description = "",
                itemName = "car_tires",
                price = 600,
                event = "atomik-npcsatis:adetsor2",
            },
            [9] = {
                label = "Far (600$)",
                description = "",
                itemName = "car_headlights",
                price = 600,
                event = "atomik-npcsatis:adetsor2",
            },

        },
    },
    [3] = {
        event = "atomik-npcsatis:illegaltoptanci",
        header = "İllegal Toptancı",
        items = {
            [1] = {
                label = "Elmas Yüzük (1000$)",
                description = "",
                itemName = "diamond_ring",
                price = 1000,
                event = "atomik-npcsatis:adetsor2",
            },
            [2] = {
                label = "Elmas (1000$)",
                description = "",
                itemName = "diamond",
                price = 1000,
                event = "atomik-npcsatis:adetsor2",
            },
            [3] = {
                label = "Altın Kolye (1000$)",
                description = "",
                itemName = "goldchain",
                price = 1000,
                event = "atomik-npcsatis:adetsor2",
            },
            [4] = {
                label = "10K Altın Kolye (1000$)",
                description = "",
                itemName = "10kgoldchain",
                price = 1000,
                event = "atomik-npcsatis:adetsor2",
            },

        },
    },
    [4] = {
        event = "atomik-npcsatis:illegaltoptanci",
        header = "İllegal Toptancı",
        items = {
            [1] = {
                label = "Elmas Yüzük (1000$)",
                description = "",
                itemName = "diamond_ring",
                price = 1000,
                event = "atomik-npcsatis:adetsor2",
            },
            [2] = {
                label = "Elmas (1000$)",
                description = "",
                itemName = "diamond",
                price = 1000,
                event = "atomik-npcsatis:adetsor2",
            },
            [3] = {
                label = "Altın Kolye (1000$)",
                description = "",
                itemName = "goldchain",
                price = 1000,
                event = "atomik-npcsatis:adetsor2",
            },
            [4] = {
                label = "10K Altın Kolye (1000$)",
                description = "",
                itemName = "10kgoldchain",
                price = 1000,
                event = "atomik-npcsatis:adetsor2",
            },

        },
    },
    [5] = {
        event = "atomik-npcsatis:illegaltacir",
        header = "İllegal Tacir",
        items = {
            [1] = {
                label = "Paketlenmiş Kokain * (120$)",
                description = "",
                itemName = "package-coke-bad-ql",
                price = 120,
                event = "atomik-npcsatis:adetsor2",
            },
            [2] = {
                label = "Paketlenmiş Kokain ** (140$)",
                description = "",
                itemName = "package-coke-med-ql",
                price = 140,
                event = "atomik-npcsatis:adetsor2",
            },
            [3] = {
                label = "Paketlenmiş Kokain *** (160$)",
                description = "",
                itemName = "package-coke-max-ql",
                price = 160,
                event = "atomik-npcsatis:adetsor2",
            },
            [4] = {
                label = "Paketlenmiş Ot * (120$)",
                description = "",
                itemName = "package-weed-bad-ql",
                price = 120,
                event = "atomik-npcsatis:adetsor2",
            },
            [5] = {
                label = "Paketlenmiş Ot ** (140$)",
                description = "",
                itemName = "package-weed-med-ql",
                price = 140,
                event = "atomik-npcsatis:adetsor2",
            },
            [6] = {
                label = "Paketlenmiş Ot ** (160$)",
                description = "",
                itemName = "package-weed-max-ql",
                price = 160,
                event = "atomik-npcsatis:adetsor2",
            },
            [6] = {
                label = "Paketlenmiş Afyon * (120$)",
                description = "",
                itemName = "package-opium-bad-ql",
                price = 120,
                event = "atomik-npcsatis:adetsor2",
            },
            [7] = {
                label = "Paketlenmiş Afyon ** (140$)",
                description = "",
                itemName = "package-opium-med-ql",
                price = 140,
                event = "atomik-npcsatis:adetsor2",
            },
            [8] = {
                label = "Paketlenmiş Afyon *** (160$)",
                description = "",
                itemName = "package-opium-max-ql",
                price = 160,
                event = "atomik-npcsatis:adetsor2",
            },
            [9] = {
                label = "Meth (200$)",
                description = "",
                itemName = "meth2",
                price = 200,
                event = "atomik-npcsatis:adetsor2",
            },
        },
    },
}
