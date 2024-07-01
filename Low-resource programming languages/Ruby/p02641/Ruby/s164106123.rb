require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end
x, n = gets_i_list
p_list = gets_i_list

# diff_h = p_list.map do |p|
#   [p, (p - x).abs]
# end.to_h

# dpp diff_h

0.upto(100) do |i|
  a, b = nil, nil
  if !p_list.include?(x - i)
    a = x - i
  end
  if !p_list.include?(x + i)
    b = x + i
  end
  if a || b
    puts [a, b].compact.min
    exit
  end
end
