a, b, c, k = gets.split.map(&:to_i)

sum = 0
sum += [a, k].min
k -= a
k -= b

sum -= [c, k].min if k >= 0

puts sum
