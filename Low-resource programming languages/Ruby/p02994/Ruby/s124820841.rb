n,l = gets.chomp.split(' ').map(&:to_i)
apples = (l...(l+n)).to_a
choice = apples.map{|a|a.abs}.min
puts apples.sum - choice