n,a,b=gets.split.map &:to_i
if (a-b).even?
  ans=(a-b).abs/2
else
  a,b=[a,b].minmax
  if a-1<n-b
    ans=(a+b-1)/2
  else
    ans=n-(a+b-1)/2
  end
end
p ans
