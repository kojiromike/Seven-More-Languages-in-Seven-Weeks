#!/usr/bin/env lua

function concatenate(a1, a2)
    local a3 = a1
    for k, v in pairs(a2) do
        a3[1 + #a3] = v
    end
    return a3
end

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

print("{")
for k, v in pairs(concatenate(book, medals)) do
    print(k .. ": " .. v)
end
print("}")

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
