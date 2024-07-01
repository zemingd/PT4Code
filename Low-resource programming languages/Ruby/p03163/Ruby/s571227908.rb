N, W = gets.split(" ").map(&:to_i)
w = []
v = []
N.times{|i|
    w[i], v[i] = gets.split(" ").map(&:to_i)
}
dp = Array.new(W+1,0)
N.times{|i|
    dp_tmp = dp.clone
    (w[i]..W).each{|j|
      dp_tmp[j] = [dp[j - w[i]] + v[i], dp[j]].max
    }
    dp = dp_tmp
}
puts dp[W]