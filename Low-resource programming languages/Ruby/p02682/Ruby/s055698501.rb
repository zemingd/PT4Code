a, b, c, k = gets.split.map(&:to_i)
sum = 0
count = k
if count-(a+b)>0
  sum=a
  sum= sum+(count-(a+b))*(-1)
else
  if count-a>0
    sum=a
  elsif count-a==0
    sum=a
  else
    sum=k
  end
end
puts sum
