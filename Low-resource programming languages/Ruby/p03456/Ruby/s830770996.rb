a,b =gets.split()
c= a+b
c= c.to_i
p c
count=1
while count <=100 do
  if c == count*count then
    print "Yes"
    break
  end
  count+=1
end

if count == 101 then
  print "No"
end
