n = gets.chomp.to_i
as = gets.chomp.split.map(&:to_i)
puts (as.uniq.size == as.size) ? 'YES' : 'NO'
