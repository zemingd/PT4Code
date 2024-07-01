n = gets.chomp.to_i
if n % 2 == 1
  ans = (n+1)/2
else
  ans = n/2
end
puts ans