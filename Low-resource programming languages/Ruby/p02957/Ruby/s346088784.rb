a, b = gets.split.map(&:to_i)

c = a - b
puts (c%2).zero? ? (a - (c / 2)) : 'IMPOSSIBLE'
