a = gets.to_i

if a%2 == 0
  puts (a/2)**2
else
  puts (a/2)*(a/2+1)
end