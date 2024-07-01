a = gets.split.map(&:to_i)
sum=a[1]
(a[0]-1).times do
 sum *= (a[1]-1) 
end
puts sum