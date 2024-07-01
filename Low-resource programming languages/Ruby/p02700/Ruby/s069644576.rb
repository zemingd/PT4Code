require 'pp'

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

A, B, C, D = gets_i_list

tt, ta = A, B
at, aa = C, D

while true do
  at = at - ta
  if at <= 0
    puts "Yes"
    exit
  end
    
  tt = tt - aa
  if tt <= 0
    puts "No"
    exit
  end
end