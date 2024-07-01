a, b, c = gets.chomp.split(' ').map(&:to_i)

puts [a, b, c].sort == [5, 5, 7] ? 'YES' : 'NO'
