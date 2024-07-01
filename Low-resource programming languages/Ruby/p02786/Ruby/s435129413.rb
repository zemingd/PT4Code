h=gets.to_i

count=0
while(h!=0)
  h=h/2
  count+=1
end

result=0
count.times do |i|
  result=result + 2**i
end

puts result