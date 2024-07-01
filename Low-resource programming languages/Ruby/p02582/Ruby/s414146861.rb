s = gets.chomp.chars
ans = 0
n = 0
if s[0] == 'R'
  n += 1
end
ans = [ans, n].max
if s[1] == 'S'
  n = 0
else
  n += 1  
end
ans = [ans, n].max
if s[2] == 'S'
  n = 0
else
  n += 1
end
ans = [ans, n].max
puts ans