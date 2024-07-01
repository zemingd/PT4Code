s = gets.rstrip
k = gets.to_i

i = -1
while k > 0
  i += 1
  if s[i] == '1'
    k -= 1
  else
    k = -1
  end
end

p s[i].to_i
