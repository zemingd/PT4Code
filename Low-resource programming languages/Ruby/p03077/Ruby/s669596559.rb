n = gets.to_i
a = gets.to_i
b = gets.to_i
c = gets.to_i
d = gets.to_i
e = gets.to_i

m = [a,b,c,d,e].min

if n % m == 0
  puts n / m + 4
else
  puts n / m + 5
end