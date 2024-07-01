a, b, c = gets.chomp.split.map(&:to_i)
puts a + b == c || a + c == b || b + c == a ? 'Yes' : 'No'