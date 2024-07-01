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
  # def chmax(a, b) a > b ? a : b end
INF = Float::INFINITY
def chmin(a, b) a < b ? a : b end

n,k = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)

dp = [INF] * n

dp[0] = 0
(n-1).times do |i|
  if i == 0
    dp[i+1] = (h[1] - h[0]).abs
  else
    t = (i+1 - k) >= 0 ? k : i+1
    t.times do |j|  
      dp[i+1] = chmin(
        dp[i+1],
        dp[i-j] + (h[i+1] - h[i-j]).abs
      )
    end
  end
end

puts dp[n-1]