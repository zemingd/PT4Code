arr = gets.chomp.split.map(&:to_i)

K = gets.to_i

MAX = arr.max

puts arr.sum - MAX + MAX * 2**K
