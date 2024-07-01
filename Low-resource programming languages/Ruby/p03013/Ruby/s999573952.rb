require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

N, M = gets_i_list
a_list = Array.new(M) { gets.to_i }

MOD = (10**9 + 7)
a_index = 0

dp = Array.new(N, 0)
dp[0] = 1

if a_list[a_index] == 1
  a_index += 1
else
  dp[1] = 1
end

0.step(N-2) do |i|
  if a_list[a_index] == i+2
    a_index += 1
  else
    dp[i+2] = (dp[i+1] + dp[i]) % MOD
  end
end

puts dp[N]