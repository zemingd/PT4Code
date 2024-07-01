n = gets.to_i
sum = 0
if n==1
  puts 0
else
  sum = n*((n-1)/2)
  if (n-1)%2 == 1
    sum+=((n-1)/2)+1
  end
  puts sum
end
