findStr = gets.chomp!

text = []
while (line = gets.chomp!.split(/[\s,.\"]+/))
  if (line.index("END_OF_TEXT"))
    break
  end
  text.push(line)
end

cnt = 0
for letter in text.flatten
  if findStr.downcase == letter.downcase
    cnt += 1
  end
end

puts cnt