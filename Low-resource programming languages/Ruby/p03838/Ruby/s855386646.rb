x, y = gets.split.map(&:to_i)
cnt = (x.abs - y.abs).abs
if x > 0 && x < y
elsif y > 0 && x > y
  cnt += 2
elsif x < 0 && x > y
  cnt += 2
else
  cnt += 1
end
puts cnt