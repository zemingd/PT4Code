
a, b = gets.strip.split.map(&:to_i)

if a <= 5
	b = 0
elsif a <= 12
	b = b / 2
end
puts b