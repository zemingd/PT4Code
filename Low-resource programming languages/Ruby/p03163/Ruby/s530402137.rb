num, weight = gets.chomp.split(" ").map(&:to_i)
# things = Array.new
# num.times do
#   things << gets.chomp.split(" ").map(&:to_i)
# end

# 縦軸を品物の順番、横軸を許容重量とし、価値の最大値を格納するテーブルdp
dp = Array.new(num + 1){Array.new(weight + 1, 0)}

# 1個目からnum個目までの品物を、ナップサックに入れるべきか順番に確認する
1.upto(num) do |n|
  # n個目の重量をtmp_weight、価値をtmp_valueとする
  tmp_weight, tmp_value = gets.chomp.split(" ").map(&:to_i)
  # 許容重量が0からweightまでの場合を、順番に確認する
  0.upto(weight) do |w_accepted|
    # tmp_weightが許容重量を超えている場合は、ナップサックに品物を入れられないため、
    # 1つ手前の品物の確認時と等しい価値を格納する
    value_not_changed = dp[n - 1][w_accepted]
    dp[n][w_accepted] = value_not_changed
    # その他の場合は、ナップサックに品物を入れる、入れない場合を比較し、価値が大きい方を格納する
    # 入れる場合の価値は、「1つ手前の品物の確認時における、許容重量がtmp_weight分少ない時の価値」 + tmp_valueとなる
    if tmp_weight <= w_accepted
      if dp[n - 1][w_accepted - tmp_weight] + tmp_value > value_not_changed
        dp[n][w_accepted] = dp[n - 1][w_accepted - tmp_weight] + tmp_value
      end
      # 「1つ手前の品物の確認時における、許容重量がtmp_weight分少ない時の価値」が、1つ手前の行の最大価値である場合は、
      # # 以降全ての許容重量にも同じ値を格納し、次の品物の処理へ進む
      # if dp[n - 1][w_accepted - tmp_weight] == dp[n - 1].last
      #   (1..weight - w_accepted).each do |index|
      #     dp[n][w_accepted + index] = dp[n - 1][w_accepted - tmp_weight]
      #   end
      #   break
      # end
    end
  end
end

# 最後の品物、最後の許容重量における価値を出力する
puts dp[num][weight]
