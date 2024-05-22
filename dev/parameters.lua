--- Описание параметров: <br/>
--- name - название параметра (копируется из ключа таблицы) <br/>
--- description - описание параметра <br/>
--- unit - формат единиц измерения параметра <br/>
--- defaultValue - значение по-муолчанию (можно задать в устройтсвах методом :withDefaultValue(value))
local parameters = {
    P_NOMINAL_W = {
        description = "Номинальная нагрузка",
        unit = Unit.Kilograms,
    },
    P_RKP = {
        description = "Рабочий коэффициент передачи",
        unit = Unit.RKP,
    },
    P_C0 = {
        description = "Сдвиг нуля"
    },
    P_DT = {
        description = "Время порогового фильтра",
        unit = Unit.Milliseconds,
    },
    P_ON_TIME = {
        description = "Время включения",
        unit = Unit.Milliseconds,
    },
    P_OFF_TIME = {
        description = "Время выключения",
        unit = Unit.Milliseconds,
    },
    P_FB = {
        description = "Обратная связь",
        unit = Unit.Boolean,
    },
    P_ERR = {
        description = "Аварийное значение"
    },
    P_MIN_V = {
        description = "Мин. значение"
    },
    P_MAX_V = {
        description = "Мак. значение"
    },
    P_MAX_P = {
        description = "Давление датчика",
        unit = Unit.Bars,
    },
    P_R = {
        description = "Радиус танка",
        unit = Unit.Meters,
    },
    P_H_CONE = {
        description = "Высота конической части танка",
        unit = Unit.Meters,
    },
    P_H_TRUNC = {
        description = "Высота усеченной части танка",
        unit = Unit.Meters,
    },
    P_MIN_F = {
        description = "Мин. значение для потока"
    },
    P_MAX_F = {
        description = "Макс. значение для потока"
    },
    P_k = {
        description = "Коэффициент усиления"
    },
    P_Ti = {
        description = "Время интегрирования"
    },
    P_Td = {
        description = "Время дифференцирования"
    },
    P_dt = {
        description = "Интервал расчета",
        unit = Unit.Milliseconds,
    },
    P_max = {
        description = "Макс. входное значение"
    },
    P_min = {
        description = "Мин. входное значение"
    },
    P_acceleration_time = {
        description = "Время выхода",
        unit = Unit.Seconds,
    },
    P_is_manual_mode = {
        description = "Ручной режим",
        unit = Unit.Boolean,
    },
    P_U_manual = {
        description = "Заданное ручное значение",
        unit = Unit.Percentages,
    },
    P_k2 = {
        description = "Коэффициент усиления 2"
    },
    P_Ti2 = {
        description = "Время интегрирования 2"
    },
    P_Td2 = {
        description = "Время дифференцирования 2"
    },
    P_out_max = {
        description = "Макс. выходное значение"
    },
    P_out_min = {
        description = "Мин. выходное значение"
    },
    P_is_reverse = {
        description = "Выход обратного действия 100-0",
        unit = Unit.Boolean,
    },
    P_is_zero_start = {
        description = "Выход прямого действия 0-100",
        unit = Unit.Boolean
    },
    P_SHAFT_DIAMETER = {
        description = "Диаметр вала",
        unit = Unit.Meters,
    },
    P_TRANSFER_RATIO = {
        description = "Передаточное число"
    },
    P_READY_TIME = {
        description = "Предельное время отсутсвя готовности к работе",
        unit = Unit.Seconds,
    },
    P_ERR_MIN_FLOW = {
        description = "Ошибка счета импульсов"
    },
}


-- метатаблица параметра для установки значения по-умолчанию
local metaParameter = {}
metaParameter.__index = metaParameter
function metaParameter:withDefaultValue(value)
    return setmetatable({defaultValue = value}, {__index = self})
end

for parameter_name, parameter in pairs(parameters) do
    -- установка мататаблицы параметрам
    parameters[parameter_name] = setmetatable(parameter, metaParameter)
    -- дублируем название параметра в таблицу параметра 
    parameter.name = parameter_name
end

return parameters