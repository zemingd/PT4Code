require 'pp'

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

L, R = gets_i_list
MOD = 2019

if L == R - 1
  puts L * R % MOD
else
  if R - L >= 2019
    puts 0
  else
    ans = (L..R).to_a.combination(2).map do |i, j|
      i * j % MOD
    end.sort
    puts ans.first
  end
end
