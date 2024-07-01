N = gets.to_i
a_list = gets.split.map(&:to_i)
ans = a_list.reduce { |acc, a| acc.gcd(a) }
puts ans
