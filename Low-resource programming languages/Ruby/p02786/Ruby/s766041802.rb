i = gets.to_i
count = 0
while i>0
count +=1
if i == 1
    break
end
 i = i/2
end
count
sum =0
(0..count-1).each do |n|
  sum += 2**n
end
puts sum