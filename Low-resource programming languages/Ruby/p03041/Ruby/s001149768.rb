inputs = STDIN.gets.chomp.split(' ').map(&:to_i)

s = STDIN.gets.chomp

s[inputs[1]-1] = s[inputs[1]-1].downcase

puts s