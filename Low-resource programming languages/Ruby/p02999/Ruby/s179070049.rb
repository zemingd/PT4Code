input = gets.chomp.split(' ').map(&:to_i)

# input[0] => X
# input[１] => A
puts input[0] < input[1] ? 0 : 10