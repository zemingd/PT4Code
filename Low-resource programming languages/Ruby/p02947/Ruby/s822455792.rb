n = gets.to_i
s = []

n.times do
	s.push(gets.split("").sort.join)
end
p(s)
c = 0

(n-1).times do |i|
	i.times do |j|
		if s[i-1]==s[j] then c+=1 end
	end
end

p(c)