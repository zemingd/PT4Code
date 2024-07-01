require 'prime'
x = gets.to_i
 
a = Prime.prime_division(x)
while a.size != 1 || a[0][1] != 1 do
  x += 1
  a = Prime.prime_division(x)
end
 
puts x