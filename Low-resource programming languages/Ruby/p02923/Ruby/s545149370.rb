n=gets.to_i
h=gets.split.map(&:to_i)
m=0
i=0
while i<n-1
  c=0
  while i+c+1 <= n-1 and h[i+c]>=h[i+c+1]
    c+=1
  end
  m=(m<c)?c:m
  i+=1+c
end
puts m