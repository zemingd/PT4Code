n, k = gets.chomp.split(' ').map(&:to_i)
hs   = gets.chomp.split(' ').map(&:to_i)

remaining = hs.sort.reverse.drop(k).reduce(:+) || 0

puts "#{remaining}"
