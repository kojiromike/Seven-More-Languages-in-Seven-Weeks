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

