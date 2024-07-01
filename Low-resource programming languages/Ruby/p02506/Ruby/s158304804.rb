findStr = gets.chomp!

text = []
while (line = gets.chomp!.split(/[\s,.]+/))
  if (line.index("END_OF_TEXT"))
    c = line.index("END_OF_TEXT")
    if (c > 0)
      text.push(line.delete_At(c))
    end
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