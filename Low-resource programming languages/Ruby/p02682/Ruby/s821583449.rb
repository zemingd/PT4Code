a, b, c, k = gets.split.map(&:to_i)
sum = 0
count = k
if count-(a+b)>0
  sum+=a*1
  sum+=(count-(a+b))*-1
else
  if count-a>0
    sum+=a*1
  elsif count-a==0
    sum = a
  else
    sum+=a*1
  end
end
puts sum
