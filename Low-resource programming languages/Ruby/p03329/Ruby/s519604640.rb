n = gets.to_i
count = 0
sum9 = 1
sum6 = 1
arr = []
while(sum9 <= 100000)
  sum9 *= 9
  arr << sum9
end
while(sum6 <= 100000)
  sum6 *= 6
  arr << sum6
end
while(n > 0)
  if n >= 6 || n >= 9
    n -= arr.select{|e| e <= n }.max
    count += 1
  else
    count += 1
    n -= 1
  end
end
puts count