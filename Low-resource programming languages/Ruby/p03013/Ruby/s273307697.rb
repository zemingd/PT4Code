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

dp = Array.new(N, 0)
dp[0] = 1
dp[1] = 1 unless a_list.include?(1)

0.upto(N-2) do |i|
  unless a_list.include?(i+2)
    dp[i+2] = (dp[i+1] + dp[i]) % MOD
  end
end

puts dp[N]