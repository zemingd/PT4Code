N,W = gets.split.map(&:to_i)
v_ary=[]
w_ary=[]
N.times do
    w,v = gets.split.map(&:to_i)
    w_ary << w
    v_ary << v
end
dp = Array.new(N+1).map{Array.new(W+1,0)}
N.times do |i|
  0.upto(W) do |j|
    if w_ary[i] <= j
      a = dp[i+1][j]
      left = j - w_ary[i]
      b = dp[i][left] + v_ary[i]
      dp[i+1][j] = [a, b].max
    end

    # 選ばない場合
    a = dp[i+1][j]
    b = dp[i][j]
    dp[i+1][j] = [a, b].max
  end
end

puts dp[N][W]
