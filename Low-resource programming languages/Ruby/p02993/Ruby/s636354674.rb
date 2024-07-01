n,l = 2.times.map{gets.to_i}
#=gets.strip.split.map(&:to_i)
#.inject(:+)

#cnt=0
#while as.all?(|x|x.even?) do
  # cnt=cnt.succ
# end

# ans = (1..n)
#   .map{|i|[i,j]}
#   .select{|d|a <= d[1] && d[1]<= b}
#   .inject(0){|sum,d|sum+d[0]}

te=(1..n).map{|i|[i,l+i-1]}
sum = te.inject(0){|s,d|s+d[1]}
i=0
ans=0
key=0
key=1 if !(te.select{|d|d[1]==0}.empty?)

ans=sum if !(te.select{|d|d[1]==0}.empty?)
while ans==0 && key==0 do
  i=i.succ
  ans=sum-i if sum>0 && !(te.select{|d|d[1]==i}.empty?)
  ans=sum+i if sum<0 && !(te.select{|d|d[1]==-i}.empty?)
end
puts ans 
