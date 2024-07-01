require 'pp'

# 入力値を文字の配列で返却する
def gets_nsp_list()
  gets.chomp.chars
end

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end

N = gets_i
S = gets_nsp_list

max = 0
(1...N).each do |n|
  left  = S[0,n]
  right = S[n,N]
  max = [max, (left.uniq & right.uniq).size].max
end
puts max
