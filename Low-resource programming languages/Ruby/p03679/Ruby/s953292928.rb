x, a, b = gets.chomp.split(" ").map(&:to_i)
if b - a <= 0 then
    puts "delicious"
elsif b- a <= x then
    puts "safe"
else
    puts "dangerous"
end