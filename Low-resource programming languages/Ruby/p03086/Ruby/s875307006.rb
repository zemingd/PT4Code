s = gets.strip.to_s
ary = []
j = 0
while j < s.size do
  i = j
  t = 0 
  while i < s.size do
    if s[i] == "A" || s[i] == "T" || s[i] == "C" || s[i] == "G"
      t += 1
      i += 1
    else
      ary.unshift(t)
      break
    end
  end
  j += 1
end
puts ary.max