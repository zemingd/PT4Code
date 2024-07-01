N, K = gets.chomp.split.map(&:to_i)
ans = 0
(1..N).each do |i|
  cnt = 0
  until i >= K
    i *= 2
    cnt += 1
  end
  ans += 1.0 / N * 1 / 2.0 ** cnt
end
puts ans
