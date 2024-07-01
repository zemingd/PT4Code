n = gets.to_i

a = []
[6,9].each{|t|
  w = t
  while w <= 100000
    a << w
    w *= t
  end
}
a.sort!

dp = [*0..100000]
a.each{|t|
  100001.times{|i|
    if 0<=i-t && dp[i-t]+1 < dp[i]
      dp[i] = dp[i-t]+1
    end
  }
}

p dp[n]