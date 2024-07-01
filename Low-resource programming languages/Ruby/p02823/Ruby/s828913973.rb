N,A,B=$<.read.split.map(&:to_i)

x = B-A
if x.even?
  puts x/2
else
  puts x/2 + [A-1,N-B].min + 1
end
