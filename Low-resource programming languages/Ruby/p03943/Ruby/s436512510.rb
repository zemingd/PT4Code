a, b, c = gets.chomp.split(' ').map(&:to_i)

balanced = a + b == c || b + c == a || c + a == b

puts balanced ? 'Yes' : 'No'
