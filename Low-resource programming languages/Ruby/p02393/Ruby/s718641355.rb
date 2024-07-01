str=gets.chomp
number=str.split
num=[0,0,0]
num[0]=number[0].to_i
num[1]=number[1].to_i
num[2]=number[2].to_i
max=0;min=100;mid=0
for i in [0,1,2] do
  if num[i]<min then
    min=num[i]
  end
  if num[i]>max then
    max=num[i]
  end
end
for j in 0..2 do
  if num[j]!=min && num[j]!=max then
    mid=num[j]
  end
end

puts "#{min} #{mid} #{max}"
  