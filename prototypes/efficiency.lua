local container = {}

-- [Item] --
local item = table.deepcopy(data.raw["module"]["efficiency-module-3"])
item.effect = {
    consumption = settings.startup["t4-modules-efficiency-item-effect-consumption"].value
}
item.icon = "__modules-t4__/graphics/icons/efficiency-module-4.png"
item.name = "efficiency-module-4"
item.order = "c[efficiency]-d[efficiency-module-4]"
item.tier = 4
table.insert(container, item)
data:extend(container)

-- [Recipe] --
local recipeCategory
local recipeIngredients

if mods["space-age"] then
    recipeCategory = "electronics"
    recipeIngredients = {
        {type= "item", name="efficiency-module-3", amount=5},
        {type= "item", name="quantum-processor", amount=5},
        {type= "item", name="spoilage", amount=5}
    }
else
    recipeCategory = "crafting"
    recipeIngredients = {
        {type= "item", name="efficiency-module-3", amount=5},
        {type= "item", name="processing-unit", amount=10}
    }
end

data:extend({
    {
        category = recipeCategory,
        enabled = false,
        energy_required = 120,
        ingredients = recipeIngredients,
        name = "efficiency-module-4",
        results = {{type= "item", name="efficiency-module-4",amount=1}},
        type = "recipe"
    }
})

-- [Technology] --
local technologyCount
local technologyIngredients
local technologyPrerequisites
if mods["space-age"] then
    technologyCount = 500
    technologyIngredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"space-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"cryogenic-science-pack", 1}
    }
    technologyPrerequisites = {"efficiency-module-3", "cryogenic-science-pack"}
else
    technologyCount = 500
    technologyIngredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1}
    }
    technologyPrerequisites = {"efficiency-module-3"}
end

data:extend({
    {
        effects = {{type = "unlock-recipe", recipe = "efficiency-module-4"}},
        icon = "__modules-t4__/graphics/technology/efficiency-module-4.png",
        icon_size = 256,
        name = "efficiency-module-4",
        prerequisites = technologyPrerequisites,
        type = "technology",
        unit = {
            count = technologyCount,
            ingredients = technologyIngredients,
            time = 60
        },
        upgrade = true
    }
})
