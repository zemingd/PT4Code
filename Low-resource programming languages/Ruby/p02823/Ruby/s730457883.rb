io = STDIN
n,a,b=io.gets.split.map(&:to_i)
if (b-a).even?
  puts (b-a)/2
else
  puts [b-1,n-a,(n-b)*2+1,(a-1)*2+1].min
end
