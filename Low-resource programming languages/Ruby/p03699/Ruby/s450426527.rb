a=(1..gets.to_i).map{gets.to_i}.sort
sum=a.inject(:+)
if sum%10==0
  p sum-a.find{|i|i%10!=0}
else
  p sum
end
