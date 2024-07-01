s = gets
n = s.length
s1 = s[0..(n-3)/2]
s2 = s[(n+1)/2..n-1]

def kaibun(s)
  result = true
  for i in 1..(s.length) do
    if s[i-1] != s[-i] then
      result = false
      break
    end
  end
  return result
end
  
if kaibun(s) == true and kaibun(s1) == true and kaibun(s2) == true then
  print "Yes"
else
  print "No"
end