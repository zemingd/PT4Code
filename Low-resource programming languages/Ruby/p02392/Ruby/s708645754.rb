a, b, c = gets.chop.split.map(&:to_i)
puts (a < b && b < c) ? 'Yes' : 'No'