n,k =gets.chomp.split.map &:to_i
l = gets.chomp.split.map &:to_i
l_sort = l.sort{|a, b| b <=> a}
max = 0
k.times {|i|
	max += l_sort[i]
}
puts max