n, k = gets.split.map &:to_i
h = []

n.times{ 
	h << gets.to_i
}

puts h.sort.each_cons(k).to_a.map{|x| x[-1] - x[0] }.min
