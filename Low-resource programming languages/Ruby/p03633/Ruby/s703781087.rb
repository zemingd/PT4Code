require 'pp'

n = gets.chomp!.to_i
t_n = n.times.map { gets.chomp!.to_i }

puts t_n.inject {|lcm, t| lcm = lcm.lcm(t) }
