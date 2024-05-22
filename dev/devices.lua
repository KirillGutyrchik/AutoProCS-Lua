Unit = require 'unit_format'
Parameter = require 'parameters'
Property = require 'properties'
RtParameter = require 'runtime_parameters'
Tag = require 'tags'

--- Типы устройств <br/>
--- key - номер типа <br/>
--- value - таблица с описанием типа (описываются в отдельном файле и подключаются как модуль)
local devices = {
    [ 1 ] = require 'V',
    [ 2 ] = require 'VC',
}

return devices