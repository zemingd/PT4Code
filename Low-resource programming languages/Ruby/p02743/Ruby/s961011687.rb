
require 'bigdecimal'
require 'bigdecimal/math'

a,b,c = gets.split(' ').map(&:to_i)


left = Bigdecimal(sqrt(a))  + Bigdecimal(sqrt(b)) 
right = Bigdecimal(sqrt(c)) 

if left < right then
  print("Yes") 
else
  print("No") 
end