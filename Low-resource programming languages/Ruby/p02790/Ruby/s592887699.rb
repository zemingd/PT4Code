a,b = gets.chomp.split(' ').map(&:to_i)
puts [b.to_s * a,a.to_s * b].sort.first