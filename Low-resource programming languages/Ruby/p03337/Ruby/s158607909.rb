a, b = gets.split.map(&:to_i)
max = a+b
if max < a-b
	max = a-b
end
if max < a*b
	max = a*b
end
puts max