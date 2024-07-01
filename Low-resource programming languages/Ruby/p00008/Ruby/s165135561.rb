i=0
n=gets.to_i
[0,1,2,3,4,5,6,7,8,9].repeated_permutation(4){|a, b, c, d|
   if a+b+c+d==n
      i+=1
   end}
puts i