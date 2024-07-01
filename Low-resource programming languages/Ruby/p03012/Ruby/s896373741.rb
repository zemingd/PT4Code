N=gets.to_i
wrray=gets.split.map(&:to_i)
sum = wrray.inject(:+)
m=1000000007
i=0
while i < N
  s=0
  j=0
  while j < i+1
    s += wrray[j]
    j += 1
  end
  l= sum-s*2
  if l < 0
    l=-l
  end
  if m > l
    m=l
  end
  i+=1
end
puts m