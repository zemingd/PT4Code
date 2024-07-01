n = gets.to_i
s = []

n.times do
	s.push(gets.split("").sort.join)
end

s.sort!
p(s)
sum = 0
buff = s[0]
combo = 1
1.upto(n-1) do |i|
	if buff == s[i] then
		sum += combo
		combo += 1
	else
		buff = s[i]
		combo = 1
	end
end

p(sum)