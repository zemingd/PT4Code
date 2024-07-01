a, b = gets.chomp.split(" ").maap(&:to_i)
ans = a * b
if ans % 2 == 0
    puts "Even"
else
    puts "Odd"
end