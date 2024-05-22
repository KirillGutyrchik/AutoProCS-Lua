--- Описание параметров времени выполнения: <br/>
--- name - название параметра (копируется из ключа таблицы) <br/>
--- description - описание параметра
local rt_paramters = {
    R_VTUG_NUMBER = {
        description = 'Номер клапана на пневмоострове',
    },
    R_VTUG_SIZE = {
        description = 'Размер области клапана для пневмоострова',
    },
    R_AS_NUMBER = {
        description = 'Номер клапана в AS-i',
    },
    R_CONST_RED = {
        description = 'Тип красного сигнала устройства при подаче на него сигнала DO. (Постоянный или мигающий). 1 - мигающий, 0 - постоянный.',
    },
    R_ID_ON = {
        description = 'Номер клеммы пневмоострова для сигнала "Открыть"',
    },
    R_ID_UPPER_SEAT = {
        description = 'Номер клеммы пневмоострова для сигнала "Открыть верхнее седло"',
    },
    R_ID_LOWER_SEAT = {
        description = 'Номер клеммы пневмоострова для сигнала "Открыть нижнее седло"',
    },
}

-- Дублирование ключа (названия параметра) в таблицу
for rt_parameter_name, rt_paramter in pairs(rt_paramters) do
    rt_paramter.name = rt_parameter_name
end


return rt_paramters