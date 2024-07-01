a, b = gets.strip.split.map(&:to_i)

if a > b
	ans = a * 2  - 1
elsif a == b
	ans = a + b
else 
	ans = b * 2 - 1
end

puts ans