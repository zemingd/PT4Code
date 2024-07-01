N=gets.to_i
A= gets.split.map(&:to_i)
B= gets.split.map(&:to_i)
C= gets.split.map(&:to_i)
feel=0
for i in 0..N-1 do
  if ((A[i]+1)==A[i+1]) then
    feel=feel+C[A[i]-1]
  end
  feel=feel+B[A[i]-1]
end
puts (feel)