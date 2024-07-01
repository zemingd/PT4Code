input = gets
n = input.split("")
s = n.length
t = 0
while n.length > t  + 1  do
if (n[t] != n[t+1]) then
  n.delete_at(t)
  n.delete_at(t)
  t = 0
else 
  t = t + 1
end
end 
print s - n.length