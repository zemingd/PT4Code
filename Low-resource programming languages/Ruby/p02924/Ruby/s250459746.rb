n = gets.to_i
sum = 0
if n==1
  puts 0
else
  for i in 1..n-1
    sum+=i
  end
  puts sum
end
