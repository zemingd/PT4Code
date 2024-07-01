n = gets.chomp.to_i
arr = gets.chomp.split.map(&:to_i)
s1 = arr.inject(:+)
s2 = 0
min = s1
arr.each do |a|
	s1 -= a
	s2 += a 
	abs = (s1-s2).abs 
	min = abs if min > abs 
end
puts min
