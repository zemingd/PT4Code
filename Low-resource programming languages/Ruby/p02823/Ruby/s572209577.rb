require 'pp'
n, a, b= gets.split.map(&:to_i)

if (a-b).even?
  p (b-a)/2
else
  cnt1 = a + 1
  cnt1 += ( (b-(a+1)) - a )/2
  
  cnt2 = n - b + 1
  cnt2 += ( b - (a+(n-b+1)) )/2

  p [cnt1,cnt2].min
end






# 1 2
