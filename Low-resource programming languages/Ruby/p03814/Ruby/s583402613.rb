s = gets.chomp
str = 0
fin = 0
for i in 0..s.length-1
  if s[i] == "A"
    str = i
    break
  end
end
  
for i in 0..s.length-1
  if s[-1-i] == "Z"
    fin = s.length - i
    break
  end
end

puts fin - str