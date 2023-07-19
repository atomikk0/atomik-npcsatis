# atomik-npcsatis

Kordinatları client.lua üzerinden değiştirebilirsiniz.

İtemleri client.lua üzerinden değiştirebilirsiniz.

Örnek item ekleme:

```lua
            {
                header = "Üzüm (30$)", -- menüde yazıcak ismi
                txt = "", -- menüde yazıcak açıklama (boş olsa da olur)
                params = {
                    event = 'atomik-npcsatis:adetsor', -- event ellemeyin
                    args = {
                        itemName = "grape", -- item ismi
                        price = 30 -- fiyat
                    }
                }
            },
```

Gerekli Script:

- [qb-menu](https://github.com/qbcore-framework/qb-menu)
- [qb-input](https://github.com/qbcore-framework/qb-input)
