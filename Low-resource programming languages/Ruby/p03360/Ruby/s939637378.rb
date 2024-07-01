inputs = gets.split.map(&:to_i).sort
k = gets.to_i
puts inputs[0] + inputs[1] + inputs[2] * 2**k