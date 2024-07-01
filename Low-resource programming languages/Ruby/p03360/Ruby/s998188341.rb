io = STDIN
a,b,c=io.gets.split.map(&:to_i)
k=io.gets.to_i

max=[a,b,c].max
if max == a
  puts b+c+max*(2**k)
elsif max == b
  puts a+c+max*(2**k)
else
  puts a+b+max*(2**k)
end
