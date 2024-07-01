n, l = gets.split.map(&:to_i)
m = Array.new(n) { |i| l + i }.min_by(&:abs)
puts Array.new(n) { |i| l + i }.inject(:+) - m