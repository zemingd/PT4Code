a, b = gets.split.map(&:to_i)

puts (a * b).even? ? 'Even' : 'Odd'
