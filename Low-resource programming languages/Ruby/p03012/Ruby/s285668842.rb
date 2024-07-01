N = gets.chop.to_i
WS = gets.chop.split.map(&:to_i)

w_sum = WS.inject(0, &:+)
ans = Float::INFINITY

1.upto(N - 1) do |i|
  ans = [ans, (w_sum - WS[0..i].inject(0, &:+) * 2).abs].min
end

puts ans