N = gets.to_i
t_list = N.times.map { gets.to_i }
ans = t_list.reduce { |acc, t| acc.lcm(t) }
puts ans
