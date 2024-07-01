n=gets.to_i
as=gets.split.map(&:to_i)
bs=gets.split.map(&:to_i)
cs=gets.split.map(&:to_i)
ans=0
n.times do |i|
  ans+=bs[as[i]-1]
  ans+=cs[as[i]-2] if i>0 && as[i]-as[i-1]==1
end
puts ans
