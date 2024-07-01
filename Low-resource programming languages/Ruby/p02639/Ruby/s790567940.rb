a[]
c = 0
while c < 5
 a[] << gets
 c += 1
end

c = 0

a[].each do |b|
  c += 1
  if b == 0
    put b
  end
end
