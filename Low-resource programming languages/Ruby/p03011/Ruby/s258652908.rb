p, q, r = gets.split.map(&:to_i)

puts [p, q, r].permutation(2)
  .to_a
  .map { |x| x[0] + x[1] }
  .min