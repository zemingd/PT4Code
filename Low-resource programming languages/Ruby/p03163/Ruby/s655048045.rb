N,W = gets.split.map(&:to_i)
wv = []
N.times { |i|
  wv[i] = gets.split.map(&:to_i)
}

dp = Array.new(N).map {Array.new(W+1,0)}

0.upto(W) { |sumw|
  if sumw >= wv[0][0]
    dp[0][sumw] = wv[0][1]
  else
    dp[0][sumw] = 0
  end
}

p dp
1.upto(N-1) { |i|
  wi,vi = wv[i]
  0.upto(W) { |sumw|
    prew = sumw - wi
    if prew >= 0
      dp[i][sumw] = [dp[i-1][prew] + vi, dp[i-1][sumw]].max
    else
      dp[i][sumw] = dp[i-1][sumw]
    end
  }
  p dp
}

p dp[N-1][W]