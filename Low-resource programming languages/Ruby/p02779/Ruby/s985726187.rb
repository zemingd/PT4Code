_N = gets.chomp
as = gets.split(' ').map(&:to_i)
puts as.uniq.count == as.count ? 'YES' : 'NO'
