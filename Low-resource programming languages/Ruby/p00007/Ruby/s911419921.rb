#codeing : utf-8
def my_debt (a , n)
  puts  "#{a.to_i}" if ( n <= 0)
  b = (a*0.05) 
  c =( b  % 1000)
  b += 1000 if( c > 0)
  b -= c
  a += b
  return my_debt(a,n-1)   if(n > 0)
end
a = 100000
n = gets.to_i
my_debt(a,n)

