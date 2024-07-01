N, K = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

D = 40

#dp[i][j] = 上位からibit目までの数を確定させたときに得たスコアの最大値
#j=1:上位ibitがKと一致， j=0:それ以外
dp = Array.new(D+1){Array.new(2, -1)}

dp[0][1] = 0

#dp[i][.]からdp[i+1][.]を計算する
0.upto(D-1) do |i|
  mask = 1 << (D-i-1)

  #A1,...ANの(i+1)bit目に1が何個あるか
  num = 0
  N.times do |j|
    num +=1 if mask & a[j] > 0
  end

  #i+1bit目を0,1にしたときに得るスコアを計算
  c = [num*mask, (N-num)*mask]

  #i+1bit目がKと一致するとき
  dp[i+1][1] = dp[i][1] + ((K & mask >0)? c[1] : c[0] )

  #i+1bit目がKと一致しないとき
  #(1) ibit目がKと一致する場合
  if K & mask > 0
    dp[i+1][0] = dp[i][1] + c[0]
  end

  #(2) ibit目がKと一致しない場合
  if dp[i][0] != -1
    dp[i+1][0] = [
        dp[i+1][0],
        dp[i][0] + [c[0],c[1]].max
      ].max
  end
end

puts [dp[D][0],dp[D][1]].max
