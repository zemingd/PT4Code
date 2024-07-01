N = gets.chomp.to_i
T, A = gets.chomp.split(' ').map(&:to_i)
heights = gets.chomp.split(' ').map(&:to_i)
ans = heights.map do |height|
  ((T - height * 0.006) - A).abs
end
puts ans.index(ans.min) + 1
