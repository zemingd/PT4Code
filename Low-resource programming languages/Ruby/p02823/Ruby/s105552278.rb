n,a,b = gets.split.map(&:to_i)
c = b-a
d= n-a 
e= b-1
if c.even?
  puts c/2
elsif  e < d && e < a+(c-1)/2 
  puts e
elsif e < d
  puts a+(c-1)/2 
elsif d < e && d < n-b+1 + (c-1)/2
  puts d
else 
  puts n-b+1 + (c-1)/2
end