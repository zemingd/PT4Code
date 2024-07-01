n=gets.chop.to_i
d=gets.chomp.split(" ").map(&:to_i)
d=d.sort
count=0
num=0
num2=0
index1=n/2-1
index2=n/2
for i in d[index1]..d[index2] do

for j in 0...n do
 if i>d[j]
  num=num+1
 end
 if i<=d[j]
  num2=num2+1
 end


 end
 if num==num2
  count=count+1
 end
 num=0
 num2=0

end
puts count

