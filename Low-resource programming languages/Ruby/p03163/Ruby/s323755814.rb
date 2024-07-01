N, W = gets.split.map(&:to_i)

w = Array.new(N)
v = Array.new(N)

N.times.each {|i|
  wi, vi = gets.split.map(&:to_i)
  w[i] = wi
  v[i] = vi
}

w.unshift(nil)
v.unshift(nil)

# dp[i][j] 1..i 番目までの品物を、重さの合計が j 以下になるように選んだ場合の最大の価値
dp = Array.new(N + 1) { Array.new(W + 1, 0) }
dp[0] = Array.new(W + 1, 0)

1.upto(N) {|i|
  0.upto(W) {|j|
    dp[i][j] = if w[i] <= j # 空のナップサックに入れられるか
      [
        dp[i - 1][j], # 入れない場合
        dp[i - 1][j - w[i]] + v[i], # 入れる場合、入れれる最大価値のものにこれの価値を追加
      ].max
    else
      dp[i - 1][j] # 入れない場合
    end
  }
}

# require "pp"
# pp dp
puts dp.last.last
