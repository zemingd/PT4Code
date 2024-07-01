require "prime"
x = gets.to_i
x+=1 until Prime.prime?(x)  
p x