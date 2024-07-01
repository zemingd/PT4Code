N, W = gets.chop.split.map(&:to_i)
wv = []

N.times do |i|
  wv << gets.chop.split.map(&:to_i)
end


dp = Array.new(N+1).map{Array.new(W+1, 0)}

0.upto(N-1) do |i|
  w_i = wv[i][0]
  v_i = wv[i][1]
  1.upto(W) do |w|
    if w - w_i >= 0
      dp[i+1][w] = [ dp[i][w-w_i] + v_i, dp[i][w] ].max
    else
      dp[i+1][w] = dp[i][w]
    end

  end

end


p dp[N][W]