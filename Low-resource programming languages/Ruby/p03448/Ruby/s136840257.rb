a=gets.chomp.to_i
b=gets.chomp.to_i
c=gets.chomp.to_i
x=gets.chomp.to_i
z=0
for n in 0..a do
  for m in 0..b do
    for l in 0..c do
      if n*500+m*100+l*50==x then
        z+=1
      end
    end
  end
end
puts z