n, m = gets.chomp.split.map(&:to_i)
l = 0
r = n
m.times do |i|
	fl,fr = gets.chomp.split.map(&:to_i)
	l = fl if l < fl
	r = fr if fr < r
end
puts r - l + 1


