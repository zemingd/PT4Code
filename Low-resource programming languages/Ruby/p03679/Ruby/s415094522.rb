x,a,b = gets.split.map(&:to_i)
if a - b >= 0
    puts "delicious"
elsif a + x >= b
    puts "safe"
else
    puts "dangerous"
end