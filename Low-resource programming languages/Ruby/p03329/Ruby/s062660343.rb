N=gets.to_i
ans = N;

for i in 1..N
  cc=0
  t=i
  u=N-i
  while t>0
    cc+=t%6
    t/=6
  end
  while u>0
    cc+=u%9
    u/=9
  end
  if ans>cc
    ans=cc
  end
end

puts ans 