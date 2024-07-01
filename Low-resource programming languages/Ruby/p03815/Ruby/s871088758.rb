x = gets.to_i

puts (1..10 ** 16).bsearch{|n| 
if n % 2 == 1  then 
    a = 6 * ((n/2)+1) + 5 * (n/2)
else n % 2 == 0 
     a = 6 * (n/2) + 5 * (n/2) 
    end
a >= x}
