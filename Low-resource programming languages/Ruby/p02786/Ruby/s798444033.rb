h = gets.to_i
a = 0
s = 0
while h > 1
	a += 1
  h /= 2
end

for i in (0..a+1)
  s += 2**i
end
puts s