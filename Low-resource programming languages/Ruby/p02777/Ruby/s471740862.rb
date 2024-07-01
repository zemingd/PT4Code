label = gets.split
inputs = gets.split.map(&:to_i)
count = {label[0] => inputs[0], label[1] => inputs[1]}
target = gets.to_s.chomp
count[target] = count[target] - 1
puts count[label[0]]
puts count[label[1]]