require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end
d, n = gets_i_list

if d == 0
  puts n
elsif d == 1
  if n == 100
    puts n
  else
    puts n * 100
  end
else
  if n == 100
    puts n * 100
  else
    puts n * 100 * 100
  end
end