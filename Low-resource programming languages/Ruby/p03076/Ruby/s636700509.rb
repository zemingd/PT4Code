x = []
 
5.times do |e|
  x << gets.to_i
end
 
min = 10
sum = 0
for i in x
  
  if i%10 != 0
    min = i%10 if min > i%10
    sum += i + (10-i%10)
  else
    sum += i
  end
  
end
 
sum = sum - (10 - min)
 
puts "#{sum}"