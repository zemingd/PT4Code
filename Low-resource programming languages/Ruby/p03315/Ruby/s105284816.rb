s = gets.chomp.split('')
i=0
sum = 0
while i < s.size
  if s[i] == "+"
    sum += 1
  else
    sum -= 1
  end
  i += 1
end
puts sum