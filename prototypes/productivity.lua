local container = {}

-- [Item] --
local item = table.deepcopy(data.raw["module"]["productivity-module-3"])
item.effect = {
    productivity = {
        bonus = settings.startup["t4-modules-productivity-item-effect-productivity"]
            .value
    },
    consumption = {
        bonus = settings.startup["t4-modules-productivity-item-effect-consumption"]
            .value
    },
    pollution = {
        bonus = settings.startup["t4-modules-productivity-item-effect-pollution"]
            .value
    },
    speed = {
        bonus = settings.startup["t4-modules-productivity-item-effect-speed"]
            .value
    }
}
item.icon = "__modules-t4__/graphics/icons/productivity-module-4.png"
item.name = "productivity-module-4"
item.order = "c[productivity]-d[productivity-module-4]"
item.tier = 4
table.insert(container, item)
data:extend(container)

-- [Recipe] --
data:extend({
    {
        enabled = false,
        energy_required = 120,
        ingredients = {{"productivity-module-3", 5}, {"processing-unit", 10}},
        name = "productivity-module-4",
        result = "productivity-module-4",
        type = "recipe"
    }
})

-- [Technology] --
data:extend({
    {
        effects = {{type = "unlock-recipe", recipe = "productivity-module-4"}},
        icon = "__modules-t4__/graphics/technology/productivity-module-4.png",
        icon_size = 256,
        name = "productivity-module-4",
        order = "i-e-d",
        prerequisites = {"productivity-module-3"},
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
