# 入力は以下の形式で標準入力から与えられる。
n = gets.chomp.to_i

array_n = []
n.times do |idx|
  array_n << idx+1
end

array_p = array_n.reverse

p array_n
p array_p

array_m = []
n.times do |idx|
  array_m << (array_n[idx] % array_p[idx])
end

p array_m

sum_m = 0
n.times do |idx|
  sum_m += array_m[idx]
end

p sum_m