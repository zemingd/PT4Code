s = gets.chomp

st = 0
i = 0
while i <= s.length-1
  if s[i] == "A"
    start = i
    break
  end
  i += 1
end

fin = 0
i = 0
while i <= s.length-1
  if s[-1-i] == "Z"
    fin = i
    break
  end
  i += 1
end

puts s.length - start - fin