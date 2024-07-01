str=gets.chomp
num=str.split
a=num[0].to_i
b=num[1].to_i
c=num[2].to_i
count=0
for i in a..b do
  if c%i==0 then
    count+=1
  end
end
puts count