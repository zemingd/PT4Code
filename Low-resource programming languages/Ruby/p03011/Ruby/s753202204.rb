p, q, r = gets.split.map(&:to_i)
puts [p,q,r].combination(2).to_a.map { |a, b| a + b }.min