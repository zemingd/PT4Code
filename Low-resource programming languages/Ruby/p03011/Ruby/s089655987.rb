ts = gets.chomp.split(' ').map(&:to_i)

puts ts.sort.take(2).reduce(:+)
