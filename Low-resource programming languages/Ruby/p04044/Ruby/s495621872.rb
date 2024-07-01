n, l = gets.split.map(&:to_i)
a = n.times.map{gets.chomp}
puts a.sort.join
