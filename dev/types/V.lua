local V = {
    name = 'V',
    description = 'Клапан',
    subtypes = {},
}

local TAG_ST_M = {
    [ Tag.ST ] = 1,
    [ Tag.M ] = 1,
}

local TAG_FB = {
    [ Tag.ST ] = 1,
    [ Tag.M ] = 1,
    [ Parameter.P_ON_TIME ] = 1,
    [ Parameter.P_FB ] = 1,
    [ Tag.FB_OFF_ST ] = 1,
}

V.subtypes = {
    [ 1 ] = {
        name = 'V_DO1',
        description = 'Клапан с одним каналом управления',
        channels = {
            DO = {},
        },
        tags = TAG_ST_M,
    },

    [ 2 ] = {
        name = 'V_DO2',
        description = 'Клапан с двумя каналами управления',
        channels = {
            DO = { 'Открыт', 'Закрыт' },
        },
        tags = TAG_ST_M,
    },

    [ 3 ] = {
        name = 'V_DO1_DI1_FB_OFF',
        channels = {
            DI = {},
            DO = {},
        },
        parameters = {
            Parameter.P_ON_TIME,
            Parameter.P_FB,
        },
        tags = TAG_FB,
    },
}

return V