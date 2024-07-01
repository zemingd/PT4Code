n = gets.to_i

ans = 1
n.times{ans = ans.lcm(gets.to_i)}
puts ans