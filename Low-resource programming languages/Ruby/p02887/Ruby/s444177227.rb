n = gets.to_i
s = gets.split('')

i = 0
while i < n do 
  if s[i] == s[i+1]
    s.delete_at(i)
    n = s.size
  else
    i += 1
  end
end
puts s.size