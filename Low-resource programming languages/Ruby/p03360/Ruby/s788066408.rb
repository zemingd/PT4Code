io = STDIN
a,b,c=io.gets.split.map(&:to_i)
k=io.gets.to_i

max=[a,b,c].max
if max == a
  puts b+c+2*max*k
elsif max == b
  puts a+c+2*max*k
else
  puts a+b+2*max*k
end
