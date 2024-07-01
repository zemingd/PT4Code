inputs = STDIN.gets.chomp.split(' ').map(&:to_i)

# inputs[0]: N
# inputs[1]: i

puts inputs[0]+1 - inputs[1]