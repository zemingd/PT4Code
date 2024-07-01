N, K = gets.split.map(&:to_i)

S = gets.chomp

a = []
if S[0] == '0'
	a << 0
end
i = 0
while i < S.length
	c = 1
	while S[i] == S[i + 1]
		c += 1
		i += 1
	end
	a << c
	i += 1
end

max = 0
a.length.times do |i|
	maxlen = i.even? ? K * 2 + 1 : K * 2
	last = i + maxlen
	last = a.length if last > a.length
	count = a[i...last].reduce{|sum, item| sum += item}
	max = count if count > max
end

puts max