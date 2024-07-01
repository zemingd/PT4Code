input = gets.chomp.split(' ').map { |v| v.to_i }
x = input[0] * input[1]

puts 'Yes' if !x.even?
puts 'No' if x.even?
