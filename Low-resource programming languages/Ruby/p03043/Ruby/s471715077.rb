require 'pp'

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

N, K = gets_i_list
total = 0.0

(1..N).each do |n|
  if n <= K-1
    count = (Math::log(K.to_f/n,2)).ceil
    total += (1.0/N) * ((0.5) ** count)
  else
    total += 1.0/N
  end
end
puts total
