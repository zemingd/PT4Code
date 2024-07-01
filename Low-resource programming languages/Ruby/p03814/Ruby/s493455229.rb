s = gets

for i in 0..s.length-1
  s[i]=="A"
  a = i+1
  break
end

for i in 1..s.length
  s[-i]=="Z"
  z = s.length - i
  break
end
puts a
puts z
puts z-a+1
