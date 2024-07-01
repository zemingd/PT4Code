p, q, r = gets.chomp.split(' ').map(&:to_i)

puts [p + q,q + r, r + p].min
