# 桁DP

n, k = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i)
# 下から数えて何桁目に 1 が何回出現したか
count_memo = Hash.new(0)
nums.each do |num|
  num.to_s(2).reverse.each_char.with_index do |b, i|
    count_memo[i] += 1 if b == "1"
  end
end
length = 45
binary_k = k.to_s(2).rjust(length, "0")
# dp[上から i 桁まで][smaller]の最大値
dp = (length + 1).times.map { Array.new(2, -1) }
# 初期化
# dp[0 桁目まで][桁は不自由]の最大値は 0
dp[0][0] = 0

# 桁数分ループする（i は遷移元の桁）
length.times do |i|
  dp_current = dp[i]
  # 最適化のため、事前に 1 行分だけ参照渡しをする
  # dp_next と dp[i + 1] の object_id は同じ
  dp_next = dp[i + 1]
  # smaller == 1 の場合、以下の桁は自由
  next_digit = binary_k[i].to_i
  2.times do |smaller|
    next if dp_current[smaller] == -1
    # smaller が 1、もしくは次の桁が 1 の場合は 0 と 1 を試す
    if smaller == 1 || next_digit == 1
      limit = 2
    else
      limit = 1
    end
    limit.times do |digit|
      # smaller == 0 且つ digit == next_digit（上限）の時のみ、0 のまま遷移する
      next_smaller = smaller == 0 && digit == next_digit ? 0 : 1
      count = count_memo[length - i - 1]
      count = n - count if count < n - count && digit == 1
      addition = count * (2 ** (length - i - 1))
      # 次の桁に遷移する
      dp_next[next_smaller] = dp_current[smaller] + addition if dp_next[next_smaller] < dp_current[smaller] + addition
    end
  end
end

puts dp.last.max
