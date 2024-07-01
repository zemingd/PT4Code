count=gets.to_i
array=[]
i=0
sum=0
count.times do
x=gets.to_i
array.push(x)
end
count.times do
  sum=sum+array[i]
  i=i+1
end
mini=array.reject { |e| e.modulo(10)==0 }
x=mini.min
if mini==[] then
  puts 0

elsif sum.modulo(10)==0 then
  puts(sum-x)
else
 puts(sum)
end
