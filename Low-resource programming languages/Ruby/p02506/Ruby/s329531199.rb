key = gets.chomp
key.downcase!
cnt = 0
while t = gets
  t = t.chomp.downcase.split
  break if t[0] == "end_of_text"
  for i in 0...t.length
    cnt += 1 if key == t[i]
  end
end
puts cnt