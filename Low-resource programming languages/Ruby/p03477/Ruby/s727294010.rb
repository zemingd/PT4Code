a, b, c, d = gets.chomp.split(" ").map(&:to_i)
left = a + b; right = c + d
if left > right then
	puts "Left"
elsif left == right 
	puts "Balanced"
else
	puts "Right"
end

