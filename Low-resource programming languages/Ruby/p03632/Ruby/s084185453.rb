a, b, c, d = gets.chomp.split(' ').map(&:to_i)

ret = [b, d].min - [a, c].max
puts ret < 0 ? 0 : ret













