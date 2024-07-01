require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# [a, b].min が遅いので
def min(a, b)
  return a < b ? a : b
end

# Nと空白区切の入力値を数値の配列で返却する
def gets_n_and_i_list()
  return gets.chomp.to_i, gets.chomp.split(" ").map(&:to_i)
end
N, p_list = gets_n_and_i_list

count = 0
min = N + 1
p_list.each do |p|
  if p < min
    count += 1
    min = min(p, min)
  end
end

puts count