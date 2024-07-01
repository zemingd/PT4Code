n=gets.to_i
s=gets
min=s[1..n].split("").count('E')
c=min
for i in 1..n do
  if s[i]=='E' then 
    c-=1
  end
  if s[i-1]=='W' then
    c+=1
  end
  if min>c then min=c end
end
puts min