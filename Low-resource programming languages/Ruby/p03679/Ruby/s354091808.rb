x, a, b = gets.chomp.split.map(&:to_i)
if a >= b then
    puts "delicious"
else
    puts x >= b - a ? "safe" : "dangerous"
end