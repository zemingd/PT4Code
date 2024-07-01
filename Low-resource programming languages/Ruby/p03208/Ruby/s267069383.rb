n, k = gets.split.map(&:to_i)
hs = (0...n).map { |_| gets.to_i }.sort
ans = 1e9
(n - k + 1).times do |i|
  diff = hs[i + k - 1] - hs[i]
  ans = diff if diff < ans
  break if ans == 0
end
puts ans
