require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}


# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end
x_list = gets_i_list

x_list.each_with_index do |x, i|
  if x == 0
    puts i+1
    exit
  end
end