a = gets.to_i
d = gets.chomp.split.map(&:to_i)
ary = []

a.times do
	ary << d
end

i = 0

while i < a
	g = ary[i][0..a-1]
	g.delete_at(i)
	g.sort!
	puts g[((g.length+1)/2)-1]
	i += 1
end