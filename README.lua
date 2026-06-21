-- Загрузка интерфейса
local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Footagesus/WindUI/main/WindUI.lua"))()

local Window = WindUI:Window({
    Title = "ЦУМ скрипт от Каспика 1.0",
    Resizable = true,
    Size = UDim2.fromOffset(450, 350)
})

local Tab = Window:Tab({ Title = "ESP Одежда" })

-- Логика (пустые функции для твоего заполнения)
Tab:Toggle({
    Title = "Включить ESP одежды",
    Callback = function(state)
        _G.ESP_Enabled = state
    end
})

Tab:Slider({
    Title = "Дистанция отрисовки (м)",
    Min = 0, Max = 500, Default = 100,
    Callback = function(v) _G.Distance = v end
})

Tab:Slider({
    Title = "Интервал обновления (сек)",
    Min = 0.1, Max = 5, Default = 0.5,
    Callback = function(v) _G.Interval = v end
})

Tab:Input({
    Title = "Макс. шанс (%)",
    Placeholder = "100"
})

Tab:Input({
    Title = "Макс. цена (₽)",
    Placeholder = "99999999"
})

Tab:Dropdown({
    Title = "Фильтр редкости",
    Items = {"Common", "Rare", "Epic", "Legendary"}
})
