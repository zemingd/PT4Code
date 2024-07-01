s=gets
c=0
m=0
for u in s.split('')
  if u=='A'||u=='G'||u=='T'||u=='C'
    c+=1
  else
    c=0
  end
  m=[m,c].max
end
puts m