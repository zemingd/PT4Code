n,l = gets.chomp.split(' ').map(&:to_i)
s = n.times.map{gets.chomp.to_s}

s_new = s.sort.join

puts s_new