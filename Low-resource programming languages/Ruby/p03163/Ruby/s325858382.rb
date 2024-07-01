### SNIPPET
  # array = [*1..q].map { |_| gets.split.map(&:to_i) }
  # n = gets.split.map(&:to_i)
  # [].all?(&:even?)
  # a = [*1..m].repeated_combination(n).to_a
  # 切り捨て: .floor(2).to_f ,切り上げ： .ceil(2).to_f,四捨五入: round(2)
  # 3.upto(6) do |i|, 6.downto(3) do |i|
  # 公約数125.gcd(100)、公倍数125.lcm(100)
  # PI = Math::PI
  # 高さh = a * Math.sin(w / 180.0 * Math::PI)
  # 底辺 = a * Math.cos(w / 180.0 * Math::PI)
def chmax(a, b) a > b ? a : b end
  # def chmin(a, b) a < b ? a : b end

# 3 5
# 1 20
# 2 30
# 3 40
n,w = gets.split.map(&:to_i)
wv = [*1..n].map { |_| gets.split.map(&:to_i) }
dp = [0] * (w+1)

# dp[i] :- 重さの合計がiの時の価値の最大値


0.upto(n-1) do |k|
  lw,lv = wv[k]
  w.downto(lw) do |i|
    dp[i] = chmax(dp[i], dp[i-lw] + lv)
  end
end

puts dp.max


# 2**n
# a b c
# 0 0 0
# 0 0 1
# 0 1 0
# 0 1 1

# dp[i] dp[i+1] + toru
#       dp[i+1] + toranai

#       iのこすう(n) * 

# O(wn) = 10**5 * 100