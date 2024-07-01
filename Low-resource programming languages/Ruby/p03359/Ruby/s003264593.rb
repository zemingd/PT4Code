require "prime"
n = gets.to_i

prime = Prime.each(55555).to_a

# 5個選んだ合計が合成数
# => 1の位の合計が 0,5 なら素数ではない = 合成数
# =>

puts prime.select{|num| num % 10 == 1}.take(n).join(" ")