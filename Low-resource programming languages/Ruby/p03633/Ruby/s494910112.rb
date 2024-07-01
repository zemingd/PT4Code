N = gets.to_i
T = N.times.map { gets.to_i }
p T.inject {|i,j| i.lcm j }
