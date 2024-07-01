a,b,c = gets.split.map(&:to_i)

a_re = a -b
puts [(c - a_re), 0].max