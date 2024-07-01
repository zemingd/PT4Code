key = gets.chomp
cnt = 0
while t = gets
  t = t.chomp.split
  for i in 0...t.length
    cnt += 1 if key == t[i]
  end
end
puts cnt