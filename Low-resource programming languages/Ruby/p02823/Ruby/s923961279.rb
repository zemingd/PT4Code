N,A,B=$<.read.split.map(&:to_i)

x = B-A
if x.even?
  puts x/2
else
  puts [B-1,N-A].min
end
