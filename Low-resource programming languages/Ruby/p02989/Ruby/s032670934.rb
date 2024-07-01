n=gets.chop.to_i
d=gets.chomp.split(" ").map(&:to_i)
num=0
num2=0
count=0
for i in 0...d.max do
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