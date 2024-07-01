a, b, c = gets.split.map(&:to_i)
p [(10 * a + b + c), (a + 10 * b + c), (a + b + c * 10)].max
