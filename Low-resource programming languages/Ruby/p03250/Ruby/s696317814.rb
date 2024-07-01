a, b, c = gets.split.map(&:to_i)

p a + b + c + 9 * [a, b, c].max 
