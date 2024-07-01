require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end
N, K = gets_i_list

ab_list = []
N.times do
  ab_list.push gets_i_list
end

ab_list.sort!{|x,y| x[0] <=> y[0]}

total = 0
ab_list.each do |a, b|
  total += b
  if total >= K
    puts a
    exit
  end
end
