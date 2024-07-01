input = gets.chomp.split
x = input[0].to_i
a = input[1].to_i
b = input[2].to_i

if a >= b
    puts "delicious"
elsif b - a <= x
    puts "safe"
else
    puts "dangerous"
end