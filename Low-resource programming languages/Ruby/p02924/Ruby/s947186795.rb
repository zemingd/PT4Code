# coding: utf-8
N = gets.to_i
ans = 0

# iの数列を作成
i = (1..N).to_a

# 並び替えた数列pを作成
pp = i.dup
tmp = pp.shift
pp.push tmp
i.each do |e|
  ans += e % pp[e-1]
end

puts ans
