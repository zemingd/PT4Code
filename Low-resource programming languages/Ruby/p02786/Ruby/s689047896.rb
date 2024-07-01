H = gets.to_i
cnt = 0
n = 1
while H > 1
  H = (H / 2).floor
  n = n * 2
  cnt += n
end
cnt += 1
puts cnt
