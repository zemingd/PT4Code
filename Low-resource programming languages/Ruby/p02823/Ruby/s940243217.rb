require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end
n, a, b = gets_i_list

if (b-a).even?
  puts (b-a)/2
else
  puts [a - 1, n - b].min + 1 + (b - a - 1)/2
end