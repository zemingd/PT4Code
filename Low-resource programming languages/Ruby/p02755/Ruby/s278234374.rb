# A B
# 8%のときA円，10％のときB円となる消費税商品の税抜価格を出力（切り捨て）
# 複数ある場合はmin,存在しないときは-1
A, B = gets.split.map(&:to_i)
X = (A / 0.08).floor
Y = (X * 0.1).floor
puts X, Y

I = (B / 0.1).floor
J = (I * 0.08).floor
puts I, J

if J === A
  puts I
elsif X === I
  puts X
else
  puts "-1"
end