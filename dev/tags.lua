--- Описание тегов <br/>
--- name - название тега (копируется из ключа таблицы) <br/>
--- description - описание тега (не используется)
local tags = {
    ST = {
        description = "Состояние"
    },
    M = {
        description = "Ручной режим"
    },
    V = {
        description = 'Аналоговое значение'
    },
    P_CZ = {
        description = 'Сдвиг нуля'
    },
    BLINK = {
        description = 'Световая индикация устройства'
    },
    NAMUR_ST = {
        description = 'Состояние по стандарту NAMUR'
    },
    OPENED = {
        description = 'Открыт'
    },
    CLOSED = {
        description = 'Закрыт'
    },
    FB_OFF_ST = {
        description = 'Текущее состояние обратной связи (на отключенное состояние)'
    },
    FB_ON_ST = {
        description = 'Текущее состояние обратной связи (на включенное состояние)'
    },
    CS = {
        description = 'Сигнал управления'
    },
    ERR = {
        description = 'Ошибка'
    },
    T = {
        description = 'Температура'
    },
    OK = {
        description = 'Проверка устройства'
    },
    R = {
        description = 'Реверс (обычно мотор)'
    },
    FRQ = {
        description = 'Частота (обычно мотор)'
    },
    RPM = {
        description = 'Обороты в минуту (обычно мотор)'
    },
    EST = {
        description = 'Расширенное состояние (обычно мотор)'
    },
    CLEVEL = {
        description = 'Пересчитанный уровень (обычно в уровне)'
    },
    L_BLUE = {
        description = 'Состояние голубой лампочки'
    },
    L_RED = {
        description = 'Состояние красной лампочки'
    },
    L_YELLOW = {
        description = 'Состояние желтой лампочки'
    },
    L_GREEN = {
        description = 'Состояние зеленой лампочки'
    },
    L_SIREN = {
        description = 'Состояние сирены'
    },
    ABS_V = {
        description = 'Абсолютное значение'
    },
    P_MIN_FLOW = {
        description = 'Минимальное значение потока'
    },
    P_MAX_FLOW = {
        description = 'Максимальное значение потока'
    },
    F = {
        description = 'Расход'
    },
    ST_CH = {
        description = 'Состояние канала'
    },
    NOMINAL_CURRENT_CH = {
        description = 'Заданный ток канала'
    },
    LOAD_CURRENT_CH = {
        description = 'Текущий ток канала'
    },
    ERR_CH = {
        description = 'Авария канала'
    },
    Z = {
        description = 'Задание'
    },
    RESULT = {
        description = 'Результат обработки'
    },
    READY = {
        description = 'Готовность'
    },
}

for tag_name, tag in pairs(tags) do
    -- дублируем название тега в таблицу тега 
    tag.name = tag_name
end

return tags