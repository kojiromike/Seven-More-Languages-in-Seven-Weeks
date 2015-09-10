#!/usr/bin/env lua

function ends_in_3(num)
    return (num - 3) % 10 == 0
end

function is_prime(num)
    if (num == 1 or num == 2 or num == 3) then
        return true
    end
    for i = 3, i ^ (1/2) do
        if num % i == 0 then
            return false
        end
    end
    return true
end

count = 0
i = 0
while count < 3 do
    i = i + 1
    if is_prime(i) and ends_in_3(i) then
        count = count + 1
        print(i)
    end
end
