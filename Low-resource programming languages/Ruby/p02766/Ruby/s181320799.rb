inputs = gets.split.map(&:to_i)
n, k = inputs[0], inputs[1]

puts n.to_s(k).size
