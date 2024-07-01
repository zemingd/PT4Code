n  = STDIN.gets.chomp.to_i
a  = STDIN.gets.chomp.split(/\s/).map { |e| e.to_i }
 
z = Array.new(n, 0)
 
a.each do |i|
	z[i - 1] += 1
end
 
all = 0
z.each do |i|
	all += i * (i - 1) / 2
end
 
a.each do |i|
	puts all - (z[i - 1] - 1)
end