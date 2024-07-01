require 'pp'
require 'bigdecimal'
require 'bigdecimal/util'

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

N, K = gets_i_list
rates = []

(1..N).each do |n|
  if n <= K-1
    count = (Math::log(K/n,2)).to_d.ceil
    rates.push( (1.to_d/N) * ((1.to_d/2) ** count) )
  else
    rates.push((1.to_d/N))
  end
end
puts rates.sum
