N, K = gets.chomp.split.map(&:to_i)
trees = Array.new(N) { gets.chomp.to_i }.sort
diff = 0
ans = 10 ** 9
(N - K + 1).times do |i|
  diff = trees[i + K - 1] - trees[i]
  ans = diff if diff < ans
end
puts ans
