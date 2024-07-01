n = gets.chomp.to_i
xx = gets.chomp.split(" ").map(&:to_i)
min = 1145141919
(0..100).each do |i|
	ngo = xx.inject(0){|prev, now| prev + (i-now) ** 2}
	#puts ngo
	min = ngo if min > ngo
end
puts min