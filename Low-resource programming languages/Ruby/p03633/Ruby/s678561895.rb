N = gets.to_i
T = N.times.map { gets.to_i }
ans = T.reduce { |acc, t| acc.lcm(t) }
puts ans