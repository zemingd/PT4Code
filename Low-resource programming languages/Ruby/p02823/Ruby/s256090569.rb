N,A,B=$<.read.split.map(&:to_i)

x = B-A
if x.even?
  puts x/2
else
  if A-1 < N-B
    puts A-1 + (B-(A-1))/2
  else
    puts N-B + (N-A-(N-B))/2
  end
end
