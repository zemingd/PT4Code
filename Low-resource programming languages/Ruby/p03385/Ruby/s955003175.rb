chk = 0
S=gets()
a=[]
a[0] = S.slice(0)
a[1] = S.slice(1)
a[2] = S.slice(2)
for i in 0..2
if a[i]=='a' then
chk += 1
elsif a[i] == 'b' then
chk += 10
elsif a[i] == 'c' then
chk += 100
end
#puts chk
end
if chk == 111 then
  print 'Yes'
else
  print 'No'
end

