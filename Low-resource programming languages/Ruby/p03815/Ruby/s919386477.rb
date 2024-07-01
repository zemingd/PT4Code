x = gets.to_i
round = 0
n = x/11
if  x==0
  round = 0
elsif x-11*n == 0
  round = 2*n
elsif x-11*n <= 5
  round = 2*n+1
else
  round = 2*n+2
end
puts round
