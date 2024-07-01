n, w = gets.split(" ").map(&:to_i)
items = []
readlines.each do |line|
  _w, _v = line.split(" ").map(&:to_i)
  items.push([_w, _v])
end

dp = Array.new(n)
(0..n).each do |i|
  dp[i] = Array.new(w + 1, 0)
end

(0..(n - 1)).each do |i|
  _w, _v = items[i]
  (0..w).each do |sum_w|
    if sum_w - _w >= 0
      dp[i + 1][sum_w] = [dp[i + 1][sum_w], dp[i][sum_w - _w] + _v].max
    end
    dp[i + 1][sum_w] = [dp[i + 1][sum_w], dp[i][sum_w]].max
  end
end

puts dp[-1].max