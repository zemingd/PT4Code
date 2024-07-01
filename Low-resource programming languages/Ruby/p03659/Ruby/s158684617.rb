require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# Nと空白区切の入力値を数値の配列で返却する
def gets_n_and_i_list()
  return gets.chomp.to_i, gets.chomp.split(" ").map(&:to_i)
end
N, a_list = gets_n_and_i_list

dpp a_list
sum_list = []
sum_list[0] = a_list[0]
1.upto(N - 1) do |i|
  sum_list[i] = sum_list[i-1] + a_list[i]
end

dpp sum_list
total = sum_list.pop
diffs = []
sum_list.each do |e|
  x = e
  y = total - e
  diffs.push((x - y).abs)
end
puts diffs.min
