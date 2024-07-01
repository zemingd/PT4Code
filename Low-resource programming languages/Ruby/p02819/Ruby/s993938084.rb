require 'pp'

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end

x = gets_i

require 'prime'

while true
  if x.prime?
    puts x
    exit
  else
    x += 1
  end
end