a = gets.split.map(&:to_i)
sum = a.inject(:+)
sum += a.max * ((1 << gets.to_i) - 1)
p sum