s = gets.chomp
index = []
for i in 0..s.length-1
if s[i] == "A"
  index.push(i)
  break
end
i = s.length-1
while i > 0 do
  if s[i] == "Z"
    index.push(i)
    break
  end
  i -=1
end
end
puts (index[1] - index[0]).abs + 1