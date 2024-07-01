a,b = gets.strip.split.map(&:to_i)

puts (a*b).even? ? 'Even' : 'Odd'