a, b = gets.chomp.split.map(&:to_i)
puts ["Even", "Odd"][a * b % 2]