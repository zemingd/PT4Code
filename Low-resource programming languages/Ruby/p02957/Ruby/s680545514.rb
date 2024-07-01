a, b = gets.split.map(&:to_i)
puts (a + b) / 2 if (a + b).even?
puts 'IMPOSSIBLE' if (a + b).odd?
