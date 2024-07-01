a, b, c, k = gets.split.map(&:to_i)

rest = k
sum = 0

sum += a
rest -= a

rest -= b

sum -= rest

puts sum