n, x = gets.chomp.split(' ').map{|i| i.to_i}
m = Array.new(n)
n.times do |i|
	m[i] = gets.chomp.to_i
end
min = 1000
cnt = 0
m.each do |i|
	min = (i < min) ? i : min
	x -= i
	cnt += 1
end
cnt += x / min
puts cnt
