a,b = gets.split(' ').map(&:to_i)
puts [b.to_s * a, a.to_s * b].sort[0]