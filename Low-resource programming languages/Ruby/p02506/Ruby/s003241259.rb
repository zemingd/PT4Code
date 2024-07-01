word = gets
cnt = 0
while true
sen = gets.split(" ")
if sen[0] == "END_OF_TEXT"
break
end
i = 0
while sen[i] != nil
if word.downcase == sen[i].downcase
cnt += 1
end
i += 1
end
end
puts cnt