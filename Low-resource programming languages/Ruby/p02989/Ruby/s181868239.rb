require 'pp'

# Nと空白区切の入力値を数値の配列で返却する
def gets_n_and_i_list()
  return gets.chomp.to_i, gets.chomp.split(" ").map(&:to_i)
end

N, d_list = gets_n_and_i_list

f_half_index = N/2 - 1
l_half_index = f_half_index + 1

d_list.sort!
ans = d_list[l_half_index] - d_list[f_half_index]

puts ans > 0 ? ans : 0