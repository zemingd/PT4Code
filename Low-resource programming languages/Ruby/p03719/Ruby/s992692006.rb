a, b, c = gets.split.map(&:to_i)
puts a <= b && c.between?(a, b) ? 'Yes' : 'No'