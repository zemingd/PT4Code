n, k = gets.split.map(&:to_i)
cnt = 0
tmp = n
while 1 do
  tmp = tmp / k
  cnt += 1
  if tmp == 0
    break
  end
end
puts cnt
