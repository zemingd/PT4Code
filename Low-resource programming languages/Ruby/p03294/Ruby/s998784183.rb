n = gets
values = gets.split.map(&:to_i)

ret = 0
for value in values 
	ret += value - 1
end

puts ret
