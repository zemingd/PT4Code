x, y = gets.split.map(&:to_i)
cnt = (x.abs - y.abs).abs
if x == y
elsif x.abs == y.abs
  cnt += 1
elsif x >= 0 && x < y
elsif y > 0 && x > y
  cnt += 2
elsif y == 0 && x > y
  cnt += 1
elsif x < 0 && x > y
  cnt += 2
elsif x == 0 && x > y
  cnt += 1
elsif y <= 0 && x < y
#elsif x > y
#  cnt += 1
#elsif x < y && x.abs < y.abs
#  cnt += 1
#elsif x < y && x.abs > y.abs
else
  cnt += 1
end
puts cnt