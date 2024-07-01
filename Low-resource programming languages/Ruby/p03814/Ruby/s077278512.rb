s = gets

for i in 0..s.length-1
  if s[i]=="A"
    a = i
    break
  end
end

for i in 1..s.length
  if s[-i]=="Z"
    z = s.length - i
    break
  end
end

puts z-a+1
