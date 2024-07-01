N = gets.to_i
T = N.times.map { gets.to_i }

puts T.inject { |lcm, t| lcm.lcm(t) }