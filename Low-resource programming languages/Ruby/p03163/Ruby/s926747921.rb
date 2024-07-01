require 'pp'

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

def min(a,b)
  a, b = a.to_i, b.to_i
  return a < b ? a : b
end

def max(a,b)
  a, b = a.to_i, b.to_i
  return a > b ? a : b
end

N, W = gets_i_list
wv_list = []
N.times do
  wv_list.push gets_i_list
end

dp = Array.new(W)
dp[0] = 0

wv_list.each do |w, v|
  next_dp = dp.dup
  dp.each_with_index do |e, i|
    if !e.nil? && i + w <= W
      next_v = dp[i].to_i + v
      next_dp[i + w] = max(dp[i + w].to_i, next_v)
    end
  end
  dp = next_dp
end
puts dp.compact.max