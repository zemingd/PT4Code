require 'pp'

# Nと空白区切の入力値を数値の配列で返却する
def gets_n_and_i_list()
  return gets.chomp.to_i, gets.chomp.split(" ").map(&:to_i)
end

N, x_list = gets_n_and_i_list

N.times do |i|
  tmp = x_list.dup
  tmp.delete_at(i)
  tmp.sort!
  puts tmp[N/2 - 1]
end
