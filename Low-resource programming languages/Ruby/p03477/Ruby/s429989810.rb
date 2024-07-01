a = gets.to_i
b = gets.to_i
c = gets.to_i
d = gets.to_i

if a + b > c + d 
    puts "Left"
elsif a + b < c + d
    puts "Right"
else
    puts "Balanced"
end