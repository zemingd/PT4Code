N = gets.to_i
W = gets.split.map(&:to_i)

ans = Float::INFINITY

0.upto(N - 2) do |i|
  a = W[0..i].inject(:+)
  b = W[(i + 1)..-1].inject(:+)

  ans = [ans, (a - b).abs].min
end

puts ans
