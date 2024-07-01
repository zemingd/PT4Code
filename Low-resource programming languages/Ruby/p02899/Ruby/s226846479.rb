require 'pp'

# Nと空白区切の入力値を数値の配列で返却する
def gets_n_and_i_list()
  return gets.chomp.to_i, gets.chomp.split(" ").map(&:to_i)
end

N, a_list = gets_n_and_i_list
a_hash = a_list.map.with_index do |a, i|
  [a, i+1]
end.to_h

ans = []
N.times do |i|
  ans.push(a_hash[i+1])
end
puts ans.join(" ")