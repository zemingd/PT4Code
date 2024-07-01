require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end
N, M = gets_i_list
k_list = []
N.times do
  k = gets_i_list
  k.shift
  k_list.push k
end

k_count_h = k_list.flatten.group_by(&:itself).map{|k,v| [k, v.count] }.to_h

dpp k_count_h
puts k_count_h.values.count(N)
