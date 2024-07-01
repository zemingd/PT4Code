num, weight = gets.chomp.split(" ").map(&:to_i)
things = Array.new
num.times do
  things << gets.chomp.split(" ").map(&:to_i)
end

# 許容重量ごとの価値の最大値を格納するdp（順次更新）
dp = Array.new(weight + 1, 0)

# 1個目からnum個目までの品物を、ナップサックに入れるべきか順番に確認する
1.upto(num) do |n|
  # n個目の重量をtmp_weight、価値をtmp_valueとする
  tmp_weight = things[n - 1][0]
  tmp_value = things[n - 1][1]
  # 許容重量がweightからtmp_weightまでの場合を、順番に確認する
  # （許容重量がtmp_weight未満の場合、ナップサックに入れることはできないため確認の必要なし）
  # なお、uptoを用いて逆向きに確認すると、ループ中に既に更新した数値を参照してしまうため、正常に動作しない
  weight.downto(tmp_weight) do |w_accepted|
    # 「許容重量がtmp_weight分少ない時の価値 + tmp_value」が「現在格納されている値」よりも大きければ格納する
    if dp[w_accepted] < dp[w_accepted - tmp_weight] + tmp_value
      dp[w_accepted] = dp[w_accepted - tmp_weight] + tmp_value
    end
  end
end

# 最後の品物、最後の許容重量における価値を出力する
puts dp[weight]

## 備忘録として他の方のコードを提出させていただきます。