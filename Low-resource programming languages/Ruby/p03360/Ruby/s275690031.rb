a, b, c = gets.split.map(&:to_i).sort
K = gets.to_i
puts a + b + c * (2 ** K)
