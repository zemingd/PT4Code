require 'pp'

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end
x, y = gets_i_list

x_abs = x.abs
y_abs = y.abs

diff = (y_abs - x_abs).abs

num_count = 0

if x_abs == y_abs
  puts 1
elsif x > 0 && y > 0 && x_abs < y_abs
  puts diff
elsif x > 0 && y > 0 && x_abs > y_abs
  puts diff + 2
elsif x < 0 && y < 0 && x_abs < y_abs
  puts diff + 2
elsif x < 0 && y < 0 && x_abs > y_abs
  puts diff
elsif x > 0 && y < 0 && x_abs < y_abs
  puts diff + 1
elsif x > 0 && y < 0 && x_abs > y_abs
  puts diff + 1
elsif x < 0 && y > 0 && x_abs < y_abs
  puts diff + 1
elsif x < 0 && y > 0 && x_abs > y_abs
  puts diff + 1
elsif x < y
  puts diff
elsif x > y
  puts diff + 1
end