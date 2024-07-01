n,w = gets.split.map(&:to_i)
items = []
n.times do
  items << gets.split.map(&:to_i)
end

items.sort! do |a,b|
  a[0] <=> b[0]
end

dp = {}

(0...n).each do |i|
  dp[i] ||= {}
  (0..w).each do |j|
    if items[i][0] <= j
      item_v = items[i][1]
      item_w = items[i][0]
    else
      item_v = 0
      item_w = 0
    end
    up = i >= 1 ? dp[i-1][j] : 0
    left = j >= 1 ? dp[i][j-1] : 0
    rem_w = j - item_w
    if i >= 1
      item = (dp[i-1][rem_w] || 0) + item_v
    else
      item = item_v
    end
    dp[i][j] = [up, left, item].max
  end
end

puts dp[n-1][w]
