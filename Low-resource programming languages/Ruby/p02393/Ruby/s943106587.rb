count=0
str=gets.chomp
num=Array.new
number=str.split
for i in 0..2 do
  num[i]=number[i].to_i
end
for j in 0..10000 do
  if j==num[0] && count<2 then
    print "#{j} "
    count+=1
  elsif j==num[0] && count==2 then
    print "#{j}"
    count+=1
  end
  if j==num[1] && count<2 then
    print "#{j} "
    count+=1
  elsif j==num[1] && count==2 then
    print "#{j}"
    count+=1
  end
  if j==num[2] && count<2 then
    print "#{j} "
    count+=1
  elsif j==num[2] && count==2 then
    print "#{j}"
    count+=1
  end
end
print "\n"