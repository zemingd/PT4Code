n,w = gets.split.map(&:to_i)

goods = []
dp = Array.new(n+1){Array.new(w+1, 0)}

n.times do
  goods << gets.split.map(&:to_i)
end

n.times do |i|
  #weightだから+1にしないとなあ
  (w+1).times do |j|
    dp[i+1][j] = [dp[i+1][j], dp[i][j- goods[i][0]] + goods[i][1]].max if j - goods[i][0] >= 0 #goods[i]を選ぶ場合
    dp[i+1][j] = [dp[i+1][j], dp[i][j]].max #選ばない場合
  end
end

#p goods
#p dp
p dp[n].max