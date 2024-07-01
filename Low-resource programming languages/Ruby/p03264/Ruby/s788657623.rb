n = gets.to_i
if n%2==1
  n -=1
  puts (n/2) * (n/2+1)
else
  puts (n/2) * (n/2)
end