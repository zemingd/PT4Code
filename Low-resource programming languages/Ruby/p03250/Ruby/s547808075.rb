a, b, c = readline.split(" ").map(&:to_i)
a, b, c = [a, b, c].sort.reverse
puts ([a, b].join).to_i + c