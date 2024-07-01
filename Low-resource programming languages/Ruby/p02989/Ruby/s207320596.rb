n = gets.to_i
d = gets.chomp.split.map(&:to_i)

d.sort!

if d[(n/2)-1] == d[(n/2)]
	puts 0
else
	puts d[n/2] - d[(n/2)-1]
end