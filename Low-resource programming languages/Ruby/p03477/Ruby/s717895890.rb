a = gets.to_i.chomp
b = gets.to_i.chomp
c = gets.to_i.chomp
d = gets.to_i.chomp

if (a + b) > (c + d) 
    puts "Left"
elsif (a + b) < (c + d)
    puts "Right"
else
    puts "Balanced"
end