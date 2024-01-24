# atomik-npcsatis

Config Yenilendi


```lua
Config.Shops = {
    [1] = {
        event = "atomik-npcsatis:toptanci", -- event ismi hepsinde farklı olması gerek
        header = "Toptanci", -- başlık
        items = {
            [1] = {
                label = "Üzüm (7$)", -- menüdeki item ismi
                description = "", -- menüdeki açıklama
                itemName = "grape", -- item kodu
                price = 7, -- fiyatı
                event = "atomik-npcsatis:adetsor", -- para mı versin kara para mı ayarı eğer kara para istiyorsanız atomik-npcsatis:adetsor2 yapınız
            },
      },
 },
```

Discord: 
https://discord.gg/GSeQ747HsC

Gerekli Script:

- [qb-menu](https://github.com/qbcore-framework/qb-menu)
- [qb-input](https://github.com/qbcore-framework/qb-input)
- [qb-target](https://github.com/qbcore-framework/qb-target)
