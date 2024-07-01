require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

require 'bigdecimal'
require 'bigdecimal/util'

# 空白区切の入力値を数値の配列で返却する
def gets_d_list()
  gets.chomp.split(" ").map(&:to_d)
end

a, b, c = gets_d_list
dpp [a,b,c]

sa = a.sqrt(11)
sb = b.sqrt(11)
sc = c.sqrt(11)

puts sa + sb < sc ? "Yes" : "No"
