a, b, c, d = gets.split(" ").map(&:to_i)
puts ((a..b).to_a & (c..d).to_a).size