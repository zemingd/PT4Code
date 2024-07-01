n, a, b = gets.split.map(&:to_i)

train = n * a
taxi = b

puts taxi < train ? taxi : train