
# 整数の入力
S = gets.chomp.split('').map(&:to_s)
# Rの個数
n = S.count('R')
# RSRの場合、１を出力
if n == 2 && S[1] == 'S'
  puts 1
else
  puts n
end
