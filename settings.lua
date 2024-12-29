-- Default Setting --
data:extend{
    {
        name = 't4-modules-speed-item-effect-consumption',
        setting_type = 'startup',
        type = 'double-setting',
        order = 'a[speed]-a[consumption]',
        default_value = 0.8,
        minimum_value = 0.7,
        maximum_value = 10
    }, {
        name = 't4-modules-speed-item-effect-speed',
        setting_type = 'startup',
        type = 'double-setting',
        order = 'a[speed]-c[speed]',
        default_value = 0.8,
        minimum_value = 0.5,
        maximum_value = 10
    }, {
        name = 't4-modules-efficiency-item-effect-consumption',
        setting_type = 'startup',
        type = 'double-setting',
        order = 'c[efficiency]-a[consumption]',
        default_value = -0.6,
        minimum_value = -10,
        maximum_value = -0.5
    }, {
        name = 't4-modules-productivity-item-effect-consumption',
        setting_type = 'startup',
        type = 'double-setting',
        order = 'c[productivity]-a[consumption]',
        default_value = 1,
        minimum_value = 0.8,
        maximum_value = 10
    }, {
        name = 't4-modules-productivity-item-effect-speed',
        setting_type = 'startup',
        type = 'double-setting',
        order = 'c[productivity]-d[speed]',
        default_value = -0.2,
        minimum_value = -10,
        maximum_value = -0.15
    }, {
        name = 't4-modules-productivity-item-effect-productivity',
        setting_type = 'startup',
        type = 'double-setting',
        order = 'c[productivity]-c[productivity]',
        default_value = 0.16,
        minimum_value = 0.1,
        maximum_value = 10
    }, {
        name = 't4-modules-productivity-item-effect-pollution',
        setting_type = 'startup',
        type = 'double-setting',
        order = 'c[productivity]-b[pollution]',
        default_value = 0.14,
        minimum_value = 0.1,
        maximum_value = 10
    }
}

-- Quality Settings --
if mods["quality"] then
    data:extend{
        {
            name = 't4-modules-speed-item-effect-quality',
            setting_type = 'startup',
            type = 'double-setting',
            order = 'a[speed]-b[quality]',
            default_value = -0.04,
            minimum_value = -1,
            maximum_value = -0.025
        }
    }
end
