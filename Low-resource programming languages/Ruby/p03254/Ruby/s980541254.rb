n,x=gets.split.map(&:to_i)
as=gets.split.map(&:to_i).sort
sum=0
(n-1).times do |i|
  if x-as[i]>=0
    x-=as[i]
    sum+=1
  else
    break
  end
end
puts x-as[n-1]==0 ? sum+1:sum
