require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}


# 入力値を文字列で返却する
def gets_s()
  gets.chomp
end
s = gets_s

puts s.rindex("Z") - s.index("A") + 1
