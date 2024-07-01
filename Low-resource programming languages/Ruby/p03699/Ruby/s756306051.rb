N = gets.chomp.to_i
# 10の倍数とその他を分けて配列に入れる
array_x0 = []
array_xx = []
N.times do
    point = gets.chomp.to_i
    if point % 10 == 0
        array_x0.push point
    else
        array_xx.push point
    end
end
# 配列のソートと合計出し
array_xx.sort!
sum_xx = 0
array_xx.each do |i|
    sum_xx += i
end
sum_x0 = 0
array_x0.each do |i|
    sum_x0 += i
end
# 表示の場合分け
if array_xx.empty? && !(array_x0.empty?)
    puts 0
elsif sum_xx % 10 == 0
    puts (sum_xx - array_xx[0]) + sum_x0
else
    puts sum_xx + sum_x0
end
