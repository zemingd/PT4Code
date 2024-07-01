# A B
# 8%のときA円，10％のときB円となる消費税商品の税抜価格を出力（切り捨て）
# 複数ある場合はmin,存在しないときは-1
A, B = gets.split.map(&:to_i)
for i in 1..10000
  if A == (i * 0.08).floor && B == (i * 0.1).floor
    puts i
    exit
  end
end
puts -1