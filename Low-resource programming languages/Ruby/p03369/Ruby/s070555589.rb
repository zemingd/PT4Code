y = 700
s = gets
i = 0
3.times do
  if s[i] == 'o'
    y += 100
  else 
    y = y
  end
 i += 1
end
puts y