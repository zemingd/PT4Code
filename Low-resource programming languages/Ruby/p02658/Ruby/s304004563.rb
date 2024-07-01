io = STDIN
N=io.gets.to_i
a=io.gets.split.map(&:to_i)
m=a.inject(1){|s,i|s*i}
if m>10**18
  puts -1
else
  puts m
end
