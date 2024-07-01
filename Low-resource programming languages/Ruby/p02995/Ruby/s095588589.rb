a, b, c, d = gets.chomp.split(" ").map(&:to_i)
res_a = (a-1)/c + (a-1)/d - (a-1)/(c.lcm(d))
res_b = b/c + b/d - b/(c.lcm(d))
puts (b-res_b) - (a-1-res_a)