x = gets.to_i
sum = 100
count = 0
while sum < x do
  sum+=sum/100
  count+=1
end
puts count