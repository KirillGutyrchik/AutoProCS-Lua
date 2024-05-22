local VC = {
    name = 'VC',
    description = 'Управляемый Клапан',
    subtypes = {},
}

VC.subtypes = {

    [ 1 ] = {
        name = 'VC',
        description = 'Аналоговый клапан',
        channels = {
            AO = {},
        },
        tags = {
            [ Tag.ST ] = 1,
            [ Tag.M ] = 1,
            [ Tag.V ] = 1,
        },
    },

    [ 2 ] = {
        name = 'VC_IOLINK',
        description = 'IO-Link аналоговый клапан',
        channels = {
            AO = {},
            AI = {},
        },
        tags = {
            [ Tag.ST ] = 1,
            [ Tag.M ] = 1,
            [ Tag.V ] = 1,
            [ Tag.BLINK ] = 1,
            [ Tag.NAMUR_ST ] = 1,
            [ Tag.OPENED ] = 1,
            [ Tag.CLOSED ] = 1,
        },
    },

    [ 3 ] = {
        name = 'VC_VIRT',
        description = 'Виртуальный аналоговый клапан (без привязки к модулям)',
        tags = {
            [ Tag.ST ] = 1,
            [ Tag.M ] = 1,
            [ Tag.V ] = 1,
        },
    },
}

return VC