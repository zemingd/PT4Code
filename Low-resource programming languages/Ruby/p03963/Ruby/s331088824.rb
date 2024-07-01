# なんか図書いてたら思いついた。託宣？
# 最初はk種類からえらび、残りは（k-1）種類から選ぶ
n, k = gets.chomp.split.map(&:to_i)
ans = k
(n-1).times do
  ans *= (k-1)
end
puts ans