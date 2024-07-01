n,a,b = gets.split.map(&:to_i)
c = b-a
d = n-b 
if c.even?
  puts c/2
elsif c<d
  puts b-1
else
  puts n-a
end