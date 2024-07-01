A1, A2, A3 = gets.split.map(&:to_i)

ans = [A1, A2, A3].permutation(3).map do |a, b, c|
  (b - a).abs + (c - b).abs
end.min

puts ans
