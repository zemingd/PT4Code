inputs = gets.chomp.split(' ').map(&:to_i)
left = inputs[0] + inputs[1]
right = inputs[2] + inputs[3]
puts left == right ? 'Balanced' : (left > right) ? 'Left' : 'Right'