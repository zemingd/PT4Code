A = gets.chomp.to_i
B = gets.chomp.to_i
C = gets.chomp.to_i
X = gets.chomp.to_i

sets = (0..A).to_a.product((0..B).to_a, (0..C).to_a)
result = sets.select{|set|
  500 * set[0] + 100 * set[1] + 50 * set[2] == X
}

print result.length