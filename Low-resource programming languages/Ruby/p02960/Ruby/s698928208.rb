# 桁DP 最適化もうむり

MOD = 10 ** 9 + 7
s = gets.chomp.split("")
question = s.map { |c| c == "?" }
length = s.length
# dp[上から i 桁まで][13 で割ったあまり]の出現回数
# 桁の自由度(smaller)は本問では不要
dp = (length + 1).times.map { Array.new(13, 0) }
# 初期化
# dp[0 桁目まで][13 で割ったあまりが 0]の出現回数は 1
dp[0][0] = 1
# （右から見た）桁数 % 6
mod_memo = [4, 1, 10, 9, 12, 3]
all_nums = (0..9).to_a

# 桁数分ループする（i は遷移元の桁）
length.times do |i|
  # 13 で割ったあまりの増加分を求める
  addition = mod_memo[(length - i) % 6]
  # 桁の数字が "?" の場合は 10 回ループ、それ以外の場合はその数字のみ
  nums = question[i] ? all_nums : [s[i].to_i]
  original_counts = dp[i]
  # ★★★とにかく繰り返し dp を見るのが遅いようなので tmp を用意しました★★★
  tmp = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
  # 13 で割ったあまりごとに確認する
  13.times do |mod|
    original_count = original_counts[mod] % MOD
    nums.each do |d|
      # 次の桁に遷移する
      tmp[(mod + addition * d) % 13] += original_count
    end
  end
  dp[i + 1] = tmp
end

puts dp[length][5] %= MOD
