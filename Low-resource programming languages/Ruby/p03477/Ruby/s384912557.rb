a, b, c, d = gets.split(' ').map(&:to_i)
A =  a + b
B =  c + d
if A > B
	puts "Left"
elsif  A == B
	puts "Balanced"
else
	puts "Right"
end