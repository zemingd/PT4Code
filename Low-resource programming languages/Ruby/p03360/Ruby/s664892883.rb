arr = gets.chomp.split.map(&:to_i)
K = gets.to_i
MAX = arr.max
puts arr.inject(:+) - MAX + MAX * 2**K
