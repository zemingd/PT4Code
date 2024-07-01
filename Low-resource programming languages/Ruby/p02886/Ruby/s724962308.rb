n = gets.to_i
d_ary = gets.split(' ').map(&:to_i)

td_ary = d_ary.combination(2)

puts td_ary.reduce(0) { |result, t| result += t[0] * t[1] }
