n,m = gets.split.map(&:to_i)
a = []
m.times { a << gets.to_i }
# dp[i] <= i段目までの移動方法の総数
dp = [1,1]
broken = a.shift # 壊れている床を左から順に取り出す。
if broken == 1
  broken = a.empty? ? nil : a.shift
  dp[1] = 0 # 壊れている場合は0とする
end
(2..n).each do |i|
  if broken == i
    dp[i] = 0
    broken = a.empty? ? nil : a.shift
    next
  end
  dp[i] = dp[i-1] + dp[i-2]
end
p dp[n] % 1000000007
