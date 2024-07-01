# coding: utf-8
N = gets.to_i
ans = 0

# iの数列を作成
i = (1..N).to_a

# 配列の添字をずらして計算
i.each do |e|
  idx = (e == N)? 0 : e
  ans += e % i[idx]
end

puts ans

