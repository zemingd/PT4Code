require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}
# sumの追加
class Array
  define_method(:sum){self.inject(:+).to_i} unless method_defined?(:sum)
end

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end
a, b, c, d, e = gets_i, gets_i, gets_i, gets_i, gets_i
a2, b2, c2, d2, e2 = [a, b, c, d, e].map{|i| i.ceil(-1)}
max_diff = [a2-a, b2-b, c2-c, d2-d, e2-e].max

puts [a2, b2, c2, d2, e2].sum - max_diff