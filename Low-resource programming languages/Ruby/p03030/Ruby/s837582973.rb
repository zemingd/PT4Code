N = gets.to_i
anser = []
N.times do |i|
	s, k = gets.chomp.split
	anser << [s, -k.to_i, i + 1]
end
anser.sort_by!{|s, k, i| [s, k]}
puts anser.map!(&:last)