N = gets.map(&:to_i)

a , b = 0 

N.times.each i do
   a[i] = gets.map(&:to_i)
   b[i] a[i] * a[i]
   a = a + a[i]
   b = b + b[i]
end

 a = a / N
 b = b / N

 puts ("#{a-b}")
