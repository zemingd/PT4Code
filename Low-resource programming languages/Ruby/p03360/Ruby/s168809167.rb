a = gets.split.map(&:to_i).sort.reverse
k = gets.to_i
a[0] *= 2**k
puts a.inject(:+)
