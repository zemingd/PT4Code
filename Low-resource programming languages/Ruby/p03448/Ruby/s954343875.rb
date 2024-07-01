a=gets.to_i 
b=gets.to_i
c=gets.to_i
x=gets.to_i
sum=0
for i in 0..a do
  for j in 0..b do
    for k in 0..c do
      way = i*500 + j*100 + k*50
      if way == x 
        sum = sum+1 
      end
    end
  end
end
puts sum