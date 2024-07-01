n,a,b = gets.split.map(&:to_i)
c = b-a
d = n-b 
if c.even?
  puts c/2
elsif n-a < b-1
  puts n-a
elsif n-a >= b-1
  puts b-1
end