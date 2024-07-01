N, M  = gets.split.map &:to_i
A = $<.map &:to_i
MOD = 10**9+7
if A.each_cons(2).any?{|a, b| b - a == 1 }
  p 0
  exit
end
NG = [false] * (N + 1)
A.each{|a| NG[a] = true }

dp = [0] * (N + 1)
dp[0] = 1

(1..N).each{|to|
  next if NG[to]
  from_1 = to - 1 >= 0 ? dp[to - 1] : 0
  from_2 = to - 2 >= 0 ? dp[to - 2] : 0
  dp[to] = (from_1 + from_2) % MOD
}
p dp[N]
