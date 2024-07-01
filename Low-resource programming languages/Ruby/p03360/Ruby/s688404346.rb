inputs = gets.chomp.split.map(&:to_i)
k = gets.chomp.to_i
max = inputs.max
max ** (k - 1)  + inputs.inject(:+)
