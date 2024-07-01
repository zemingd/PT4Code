a,b = gets.split.map(&:to_i)
cnt = 0
for i in a..b
  if i == i.reverse
    cnt += 1
  end
end
puts cnt