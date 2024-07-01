input = gets.split.map(&:to_i)
#min=input[1],max=input[0]+input[1]-1
min = input[1]
max = input[0]+input[1]-1
if input[1]<=0 then
  min = min*(-1)
  if input[0]+input[1]-1 > 0 then
    print (max(max+1)/2) - (min(min+1)/2)
  else
    print (min(min+1)/2)*(-1) - max
  end
else
   print (max(max+1)/2) - (min(min+1)/2)
end