#!/usr/bin/env lua

function reduce(max, init, f)
    for i = 1, max do
        init = f(init, i)
    end
    return init
end

function add(previous, next)
    return previous + next
end

print(reduce(5, 0, add))

function factorial(num)
    function multiply(previous, next)
        return previous * next
    end
    return reduce(num, 1, multiply)
end

print(factorial(6))
