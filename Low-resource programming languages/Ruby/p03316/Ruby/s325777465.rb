n = gets.chomp
sum = n.chars.map(&:to_i).inject(:+)

puts n.to_i % sum == 0 ? 'Yes' : 'No'