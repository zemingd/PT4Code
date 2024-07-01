require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

A,B,C,K = gets_i_list

if A >= K
  puts K
elsif A + B >= K
  puts A
else
  c = K - A - B
  puts A - c
end
