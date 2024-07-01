n=gets.to_i
as=(1..n).map{gets.to_i}
ans=-1; c=0
(1..n).each do |i|
  c=as[c]-1
  if c==1
    ans=i
    break
  end
end
p ans