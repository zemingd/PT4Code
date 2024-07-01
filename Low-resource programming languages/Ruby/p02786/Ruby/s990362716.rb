require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end
h = gets_i

total = 0
if h == 1
  total = 1
else
  i = 0
  while h != 0
    h = h/2
    total += 2 ** i
    i += 1
  end
end

puts total