n,m=gets.split(' ').map(&:to_i)
a=gets.split(' ').map(&:to_i)
#tajigen = Array.new(4) { Array.new(2,0) }
sum =0
for i in 0..n-1
  sum+= a[i]
end
#puts sum
k=4*m
stand = sum/k + 1
if sum%4 == 0
  stand = sum/k
end

#puts stand

count = 0
for i in 0..n-1
  if a[i] >= stand
    count +=1
  end
end

if count>=m
  puts "Yes"
else
  puts "No"
end
