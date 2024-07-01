num, pattern = gets.split(" ").map(&:to_i)
puts pattern * ((pattern-1) ** (num-1))
