n,a,b=gets.split.map(&:to_i)
if (b-a)%2==0 then
  p (b-a)/2
else
  ans=[n-b,a-1].min
  p ans+(b-a+1)/2
end