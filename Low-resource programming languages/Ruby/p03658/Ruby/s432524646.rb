n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
a = a.sort.reverse
puts a[0 ... k].reduce(:+)