a, b = gets.split.map(&:to_i)
puts a - 1 + (a > b ? 0 : 1)
