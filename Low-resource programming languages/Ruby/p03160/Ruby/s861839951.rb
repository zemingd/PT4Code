require 'pp'

# Nと空白区切の入力値を数値の配列で返却する
def gets_n_and_i_list()
  return gets.chomp.to_i, gets.chomp.split(" ").map(&:to_i)
end

N, h_list = gets_n_and_i_list      

dp = []
dp[0] = 0

(1...N).each do |i|
  s1 = (h_list[i] - h_list[i - 1]).abs + dp[i - 1]
  if i >= 2
    s2 = (h_list[i] - h_list[i - 2]).abs +  + dp[i - 2]
  else
    s2 = Float::INFINITY
  end
  dp[i] = [s1, s2].min
end

puts dp.last