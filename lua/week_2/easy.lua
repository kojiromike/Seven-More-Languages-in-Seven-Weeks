#!/usr/bin/env lua

book = {
    "Grail Diary",
    "Henry Jones",
    100,
}
medals = {
    "gold",
    "silver",
    "bronze",
} 

function print_table(t)
    for k, v in pairs(t) do
        print(k .. ": " .. v)
    end
end

function concatenate(a1, a2)
    local a3 = a1
    for k, v in pairs(a2) do
        a3[1 + #a3] = v
    end
    return a3
end

print_table(concatenate(book, medals))

local _private = {}
function strict_read(table, key)
    if _private[key] then
        return _private[key]
    else
        error("Invalid key: " .. key)
    end
end
function strict_write(table, key, value)
    if value == nil then
        _private[key] = nil
    elseif _private[key] then
        error("Duplicate key: " .. key)
    else
        _private[key] = value
    end
end
local mt = {
    __index    = strict_read,
    __newindex = strict_write
}
treasure = {}
setmetatable(treasure, mt)
