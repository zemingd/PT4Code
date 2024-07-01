N, L = gets.split.map(&:to_i)
ary = N.times.map{gets.chomp}
puts ary.sort.join