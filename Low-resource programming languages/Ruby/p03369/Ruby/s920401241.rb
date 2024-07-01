s = gets.split.map(&:to_i)
price = 700 + 100 * s.count("o")
puts price
