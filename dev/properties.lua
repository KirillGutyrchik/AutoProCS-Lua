--- Описание свойств: <br/>
--- name - название свойства (копируется из ключа таблицы) <br/>
--- description - описание свойтсва
local properties = {
    MT = {
        description = 'Связанные моторы',
    },
    PT = {
        description = 'Датчик давления',
    },
    IN_VALUE = {
        description = 'Входное значение',
    },
    OUT_VALUE = {
        description = 'Выходное значение',
    },
    IP = {
        description = 'IP-адрес',
    },
    SIGNALS_SEQUENCE = {
        description = 'Последовательность сигналов',
    },
}

-- Дублирование ключа (названия свойства) в таблицу
for property_name, property in pairs(properties) do
    property.name = property_name
end


return properties