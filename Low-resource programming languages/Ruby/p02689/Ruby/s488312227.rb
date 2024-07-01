require 'pp'

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

N, M = gets_i_list
h_list = gets_i_list

ans_list = Array.new(N + 1, true)
ans_list[0] = false

M.times do
  a, b = gets_i_list
  ha = h_list[a-1]
  hb = h_list[b-1]
  if ha == hb
    ans_list[a] = false
    ans_list[b] = false
  elsif ha >= hb
    ans_list[b] = false
  else ha <= hb
    ans_list[a] = false
  end
end
puts ans_list.count(true)