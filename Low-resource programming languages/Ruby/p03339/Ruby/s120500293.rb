n=gets.to_i
s=gets
min=n
for i in 0...n do
  c=0
  for x in 0...i do
    if s[x]=='W' then c+=1 end
  end
  for y in i+1...n do
    if s[y]=='E' then c+=1 end
  end
  if min>c then min=c end
end
puts min