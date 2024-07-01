# 桁DP

MOD = 10 ** 9 + 7
s = gets.chomp
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
  # 13 で割ったあまりごとに確認する
  13.times do |mod|
    # 桁の数字が "?" の場合は 10 回ループ、それ以外の場合はその数字のみ
    nums = s[i] == "?" ? all_nums : [s[i].to_i]
    # 13 で割ったあまりの増加分を求める
    addition = mod_memo[(length - i) % 6]
    original_count = dp[i][mod] % MOD
    nums.each do |d|
      next_mod = (mod + addition * d) % 13
      # 次の桁に遷移する
      dp[i + 1][next_mod] += original_count
    end
  end
end

puts dp[length][5] %= MOD
