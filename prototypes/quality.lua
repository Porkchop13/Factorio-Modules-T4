local container = {}

-- [Item] --
local item = table.deepcopy(data.raw["module"]["quality-module-3"])
item.effect = {
    quality = settings.startup["t4-modules-quality-item-effect-quality"].value*10,
    speed = settings.startup["t4-modules-quality-item-effect-speed"].value
}
item.icon = "__modules-t4__/graphics/icons/quality-module-4.png"
item.name = "quality-module-4"
item.order = "d[quality]-d[quality-module-4]"
item.tier = 4
table.insert(container, item)
data:extend(container)

-- [Recipe] --
data:extend({
    {
        enabled = false,
        energy_required = 120,
        ingredients = {
            {type= "item", name="quality-module-3", amount=5},
            {type= "item", name="processing-unit", amount=10}
        },
        name = "quality-module-4",
        results = {{type= "item", name="quality-module-4",amount=1}},
        type = "recipe"
    }
})

-- [Technology] --
data:extend({
    {
        effects = {{type = "unlock-recipe", recipe = "quality-module-4"}},
        icon = "__modules-t4__/graphics/technology/quality-module-4.png",
        icon_size = 256,
        name = "quality-module-4",
        prerequisites = {"quality-module-3"},
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
