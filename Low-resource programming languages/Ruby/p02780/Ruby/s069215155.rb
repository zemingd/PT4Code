require 'pp'

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

N, K = gets_i_list
p_list = gets_i_list

e_list = p_list.map do |p|
  (p + 1) * 0.5
end

max = 0
0.upto(N - K) do |i|
  total = e_list.slice(i, K).inject(:+)
  max  = [max, total].max
end
puts sprintf("%.12f", max)
