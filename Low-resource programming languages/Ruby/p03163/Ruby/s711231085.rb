n, W = gets.chomp.split.map(&:to_i)

dp = Array.new(n+1) { Array.new(W+1,0) }
w = []
v = []
n.times do |i|
  ww, vv = gets.chomp.split.map(&:to_i)
  w.push ww
  v.push vv
end

n.times do |i|
  (W+1).times do |weight|
    dp[i+1][weight] = dp[i][weight]
    if w[i] <= weight
      dp[i+1][weight] = [dp[i][weight-w[i]] + v[i], dp[i][weight]].max
    end
  end
end

# dp.each{|line| p line}
puts dp[n][W]