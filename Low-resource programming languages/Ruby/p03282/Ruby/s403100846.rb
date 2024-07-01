s = gets.rstrip
k = gets.to_i - 1

i = 0
while i < k && s[i] == '1'
  i += 1
end
p s[i].to_i
