require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split("").map(&:to_i)
end
s_list = gets_i_list
n = s_list.size

diffs = []

0.upto(n - 3)do |i|
  diffs.push ([s_list[i], s_list[i+1], s_list[i+2]].join.to_i - 753).abs
end
puts diffs.min
