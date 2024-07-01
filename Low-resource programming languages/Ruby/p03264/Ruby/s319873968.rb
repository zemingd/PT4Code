n=gets.to_i
puts (n/2) ** 2 if n%2==0
puts ((n-1)/2) * ((n-1)/2 + 1) if n%2!=0