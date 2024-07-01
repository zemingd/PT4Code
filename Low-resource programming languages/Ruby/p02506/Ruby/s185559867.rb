key = gets.chomp
key
cnt = 0
while t = gets
  t = t.chomp.split
  break if t[0] == "END_OF_TEXT"
  for i in 0...t.length
    cnt += 1 if key.downcase == t[i].downcase
  end
end
puts cnt