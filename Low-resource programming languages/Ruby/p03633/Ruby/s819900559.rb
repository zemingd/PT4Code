require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end
N = gets_i

t = gets_i

(N-1).times do
  t = t.lcm(gets_i)
end

puts t