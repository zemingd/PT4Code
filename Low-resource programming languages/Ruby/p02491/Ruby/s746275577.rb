a, b = gets.split(" ").map &:to_f
puts [(a / b).to_i, (a % b).to_i, a / b]