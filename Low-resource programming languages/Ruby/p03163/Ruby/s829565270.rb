N, W = gets.split(" ").map(&:to_i)
dp = Array.new(W+1,0)
N.times{|i|
    w, v = gets.split(" ").map(&:to_i)
    dp_tmp = dp.clone
    (w..W).each{|j|
      dp_tmp[j] = dp[j-w] + v if dp[j - w] + v > dp[j] 
    }
    dp = dp_tmp
}
puts dp[W]