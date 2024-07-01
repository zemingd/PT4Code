x, a, b = gets.split.map(&:to_i)

result = ""
if a > b then
    result = "delicious"
else
    foo = (b - a) <= x
    result = foo ? "safe" : "dangerous"
end

puts result
