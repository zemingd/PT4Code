A, B, C, D = gets.chomp.split(" ").map(&:to_i)
l = A + B
r = C + D
if l == r
    puts "Balanced"
elsif l > r
    puts "Left"
else
    puts "Right"
end