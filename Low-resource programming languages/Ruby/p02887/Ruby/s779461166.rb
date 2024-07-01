len = gets.to_i
slimes = gets.chomp
res = 1
buf = slimes[0]
for i in 1...len
	if buf != slimes[i] then res += 1; buf = slimes[i] end
end
puts res