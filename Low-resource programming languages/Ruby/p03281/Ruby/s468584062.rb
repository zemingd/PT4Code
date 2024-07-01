n=gets.to_i
sum=0
1.step(n,2) do |i|
  count=0
  1.step(i,2) do |j|
    if i%j==0 then count+=1 end
  end
  if count==8 then sum+=1 end
end
puts sum
