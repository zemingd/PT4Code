s = gets
n = s.length
s1 = s[0..(n-3)/2]
s2 = s[(n+1)/2..n-1]
 
def kaibun(m)
  result = true
  for i in 1..(m.length) do
    if m[i-1] != m[-i] then
      result = false
      break
    end
  end
  return result
end
   
if kaibun(s) and kaibun(s1) and kaibun(s2) then
  print 'Yes'
else
  print 'No'
end