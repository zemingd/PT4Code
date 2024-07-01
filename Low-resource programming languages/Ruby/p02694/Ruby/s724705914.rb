# 標準入力
x = gets.chomp.to_i
a = 100
p = 0.01

# 額の推移を計算する
n = 0
while a < x do
  a += (a * p).floor
  n += 1
  # p n,a
end

# 解答
puts n