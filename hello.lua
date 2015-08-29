local fizzbuzz = {}

function isFizz(number)
    return (number % 3) == 0
end

function isBuzz(number)
    return (number % 5) == 0
end

function fizzbuzz.echo (number)
    result = ""

    if isFizz(number) then
        result = result .. "fizz"
    end
    if isBuzz(number) then
        result = result .. "buzz"
    end
    if result == "" then
        result = number .. ""
    end

    return result
end

return fizzbuzz
