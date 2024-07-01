a, b, c, d = gets.split.map(&:to_i)
ac = (c - 1) / b + 1
cc = (a - 1) / d + 1
if ac <= cc
	puts "Yes"
else
	puts "No"
end