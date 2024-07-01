n=gets.to_i
l=gets.split.map(&:to_i).sort
c=0
n.times do |i|
  j=i-1
  k=0
  while k<j
    if l[i]>=l[j]+l[k]
      k+=1
    else
      c+=j-k
      j-=1
    end
  end
end
puts c
