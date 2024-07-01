n = gets.chomp.to_i
as = gets.chomp.split(' ').map(&:to_i)

puts (n == as.uniq.count) ? 'YES' : 'NO'
