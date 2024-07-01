p, q, r = gets.split.map(&:to_i)
puts [p, q, r].min(2).reduce(:+)
