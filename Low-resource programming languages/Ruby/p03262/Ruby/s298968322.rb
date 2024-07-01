require 'pp'

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

N, X = gets_i_list
x_list = gets_i_list

min = (X - x_list[0]).abs
if min.zero?
  puts 0
  exit
end

x_list.each do |x|
  min = [min, (X - x).abs].min
end

puts min
