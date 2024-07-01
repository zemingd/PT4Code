i=0
n=gets.to_i
(0..50).combination(4){|a,b,c,d|
   if a+b+c+d==n
      i+=1
   end}
puts i