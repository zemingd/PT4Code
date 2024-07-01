as = gets.split(' ').map(&:to_i)
puts as.uniq == as ? 'YES' : 'NO'