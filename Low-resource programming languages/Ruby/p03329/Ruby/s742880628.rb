n=gets.to_i
ans=n
(n+1).times do |i|
  count=0
  t=i
  while t>0
    count+=t%6
    t/=6
  end
  t=n-i
  while t>0
    count+=t%9
    t/=9
  end
  ans=count if ans>count
end
puts ans
