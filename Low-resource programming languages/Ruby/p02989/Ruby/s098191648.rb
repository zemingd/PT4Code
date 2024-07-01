n = gets.chomp.to_i
d = gets.chomp.split(' ').map{|i| i.to_i }

sd = d.sort
l = sd.length

puts sd[l/2] - sd[l/2 - 1]
