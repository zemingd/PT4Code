n = gets.to_i
s = gets.chomp.split('')

length = s.length

i = 0
while i < length-1 do
  if s[i] == s[i+1]
    s.delete_at(i+1)
    length -= 1
  else
    i += 1
  end
end

print s.length