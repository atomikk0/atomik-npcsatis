# atomik-npcsatis

client.lua içinden düzenleyebilirsiniz itemleri

Örnek item:

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

Kordinatları client.lua üzerinden değiştirebilirsiniz.