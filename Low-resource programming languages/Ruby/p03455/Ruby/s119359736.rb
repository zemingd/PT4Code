a,b = gets.chomp.split.map(&:to_i)

if a % 2 == 0 || b % 2 == 0
    puts "Even"
else
    puts "Odd"
end