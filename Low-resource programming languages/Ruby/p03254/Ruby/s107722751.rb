require 'pp'

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end
N, x = gets_i_list
a_list = gets_i_list

a_list.sort.each_with_index do |a, i|
  if x - a >= 0
    x -= a
  else
    puts i
    exit
  end
end

if x == 0
  puts a_list.size
else
  puts a_list.size - 1
end