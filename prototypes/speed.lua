local container = {}

-- [Item] --
local item = table.deepcopy(data.raw["module"]["speed-module-3"])
item.effect = {
    speed = settings.startup["t4-modules-speed-item-effect-speed"].value,
    consumption = settings.startup["t4-modules-speed-item-effect-consumption"].value
}
item.icon = "__modules-t4__/graphics/icons/speed-module-4.png"
item.name = "speed-module-4"
item.order = "a[speed]-d[speed-module-4]"
item.tier = 4
table.insert(container, item)
data:extend(container)

-- [Recipe] --
data:extend({
    {
        enabled = false,
        energy_required = 120,
        ingredients = {
            {type= "item", name="speed-module-3", amount=5},
            {type= "item", name="processing-unit", amount=10}
        },
        name = "speed-module-4",
        results = {{type= "item", name="speed-module-4",amount=1}},
        type = "recipe"
    }
})

-- [Technology] --
data:extend({
    {
        effects = {{type = "unlock-recipe", recipe = "speed-module-4"}},
        icon = "__modules-t4__/graphics/technology/speed-module-4.png",
        icon_size = 256,
        name = "speed-module-4",
        order = "i-c-d",
        prerequisites = {"speed-module-3"},
        type = "technology",
        unit = {
            count = 500,
            ingredients = {
                {"automation-science-pack", 1}, {"logistic-science-pack", 1},
                {"chemical-science-pack", 1}, {"production-science-pack", 1}

            },
            time = 60
        },
        upgrade = true
    }
})
