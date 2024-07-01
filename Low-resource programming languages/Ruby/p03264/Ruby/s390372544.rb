K = get.chomp.to_i
a = K/2
b = K%2
if b == 0
  puts a*a
else 
  puts a*(a+1)
end

