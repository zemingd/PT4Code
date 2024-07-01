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

n = gets.to_i

dp = [INF] * (n+9+1)

patern = [1]
i = 1
while 6 ** i < 10 ** 6  
  patern.push(6 ** i)
  i += 1
end 

i = 1
while 9 ** i < 10 ** 6  
  patern.push(9 ** i)
  i += 1
end 
patern.sort!
dp[0] = 0
(n+1).times do |i|
  patern.each do |j|
    if (i+j) <= n
      dp[i + j] = chmin(dp[i+j], dp[i]+1)
    end
  end
end

pp dp[n]