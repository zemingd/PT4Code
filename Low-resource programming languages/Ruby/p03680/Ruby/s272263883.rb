N,*A=`dd`.split.map(&:to_i)
n=0
i=1
while true
  A[i-1],i = nil,A[i-1]
  n += 1
  if i == 2
    break
  elsif !i
    p -1; exit
  end
end
p n