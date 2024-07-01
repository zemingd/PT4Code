n, m, t, g = gets.chomp.split.map(&:to_i)

puts m-n+1 - (m/t-(n-1)/t)-(m/g-(n-1)/g)+(m/t.lcm(g)-(n-1)/t.lcm(g))