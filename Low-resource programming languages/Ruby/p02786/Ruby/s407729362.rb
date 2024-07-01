#caracalvsMonster
h = gets.to_i
count = 0
while(h > 1)
	h = h / 2
	count += 1
end
ans = 0
(0..count).each do |i|
	ans += 2 ** i
end
puts ans