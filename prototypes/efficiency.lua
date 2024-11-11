local container = {}

-- [Item] --
local item = table.deepcopy(data.raw["module"]["effectivity-module-3"])
item.effect = {
    consumption = {
        bonus = settings.startup["t4-modules-efficiency-item-effect-consumption"]
            .value
    }
}
item.icon = "__modules-t4__/graphics/icons/effectivity-module-4.png"
item.name = "effectivity-module-4"
item.order = "c[effectivity]-d[effectivity-module-4]"
item.tier = 4
table.insert(container, item)
data:extend(container)

-- [Recipe] --
data:extend({
    {
        enabled = false,
        energy_required = 120,
        ingredients = {{"effectivity-module-3", 5}, {"processing-unit", 10}},
        name = "effectivity-module-4",
        result = "effectivity-module-4",
        type = "recipe"
    }
})

-- [Technology] --
data:extend({
    {
        effects = {{type = "unlock-recipe", recipe = "effectivity-module-4"}},
        icon = "__modules-t4__/graphics/technology/effectivity-module-4.png",
        icon_size = 256,
        name = "effectivity-module-4",
        order = "i-g-d",
        prerequisites = {"effectivity-module-3"},
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
