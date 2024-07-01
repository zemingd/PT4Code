#見ながらやった
# 目標
x = gets.to_i
# 預金
yokin = 100
n = 0
while x > yokin
  yokin = (yokin * 1.01).floor #.floorは小数点以下切り捨て
  n += 1
end

puts n
