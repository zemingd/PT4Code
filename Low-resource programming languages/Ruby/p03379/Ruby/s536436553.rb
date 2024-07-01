require 'pp'

# Nと空白区切の入力値を数値の配列で返却する
def gets_n_and_i_list()
  return gets.chomp.to_i, gets.chomp.split(" ").map(&:to_i)
end

N, x_list = gets_n_and_i_list

sorted_x_list = x_list.sort
l_mid = sorted_x_list[N/2 -1]
r_mid = sorted_x_list[N/2]

N.times do |i|
  if x_list[i] <= l_mid
    puts r_mid
  else
    puts l_mid
  end
end
