n = gets.to_i
h = gets.split.map(&:to_i)
cnt = 1
fr = h[0]
for i in 1..(n-1)
  if fr <= h[i]
    cnt += 1
    fr = h[i]
  end
end
puts cnt