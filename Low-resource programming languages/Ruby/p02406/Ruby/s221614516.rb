n = gets.to_i
x = 0
while x != n do
	x += 1
	print " #{x}" if x.to_s.index("3") || x % 3 == 0
end