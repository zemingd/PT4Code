N,X=gets.split.map(&:to_i)
A=gets.split.map(&:to_i).sort!
i=0
s=0
while i<N
  s+=A[i]
  if(s>X)
    puts i
    exit
  end
  i+=1
end