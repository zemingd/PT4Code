a, b = gets.split.map(&:to_i)

puts (a * b).odd? ? 'Odd' : 'Even'