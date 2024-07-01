n = gets.chomp

puts n.chars.any? { |num| num == '7' } ? 'Yes' : 'No'
