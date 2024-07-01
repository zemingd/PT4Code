require 'pp'

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

A, B, C, D = gets_i_list

if C == 1 || D == 1
  puts 0
  exit
end

E = C.lcm(D)
total = 0
total += (B.to_f / C).floor - ((A-1).to_f / C).floor
total += (B.to_f / D).floor - ((A-1).to_f / D).floor
total -= (B.to_f / E).floor - ((A-1).to_f / E).floor

puts B - A + 1 - total
