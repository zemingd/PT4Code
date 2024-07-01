a, b, c, k = gets.split.map(&:to_i)
if k < a
	total = k
elsif k < a + b
	total = a
else
	total = a - (k - a - b)
end
puts total