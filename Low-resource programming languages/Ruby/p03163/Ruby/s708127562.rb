n,w = gets.split.map(&:to_i)
a = n.times.map{gets.split.map(&:to_i)}
dp = Array.new(w+1,0)

n.times{|i|
  w.downto(0){|j|
    if a[i][0]+j<=w && dp[j+a[i][0]] < dp[j]+a[i][1]
      dp[j+a[i][0]] = dp[j]+a[i][1]
    end
  }
}

p dp.max
