a, b = gets.strip.split.map(&:to_i)
puts (a * b).odd? ? 'Yes' : 'No'
