x = gets.to_i
cnt = 0
y = 100
loop do
  y = (y * 1.01).floor
  cnt += 1
  break if y >= x
end

p cnt
