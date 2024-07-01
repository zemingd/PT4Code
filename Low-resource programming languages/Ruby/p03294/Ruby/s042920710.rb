N = gets.to_i
a_list = gets.split.map(&:to_i)
lcm = a_list.reduce(1) { |acc, m| acc.lcm(m) }
ans = a_list.reduce(0) { |acc, n| acc + (lcm - 1) % n }
puts ans
