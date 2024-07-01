x, a, b = gets.split.map(&:to_i)

if a >= b then
    puts "delicious"
else
    puts (b - a) <= x ? "safe" : "dangerous"
end