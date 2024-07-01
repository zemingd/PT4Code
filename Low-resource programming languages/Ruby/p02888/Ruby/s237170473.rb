$n=gets.to_i
l=gets.split.map(&:to_i).sort
r=0
def tri(i,j,l)
  y=(i-j).abs;x=i+j
  z=l.bsearch_index{|t|t>y}
  return 0 if z.nil?
  w=l.bsearch_index{|t|t>=x}
  return 0 if w==0
  if w.nil?
    w=$n
    mx=l[-1]
  else
    mx=l[w]
  end
  s=w-z
  s-=1 if l[z]<=i and i<=mx
  s-=1 if l[z]<=j and j<=mx
  return s
end
l.combination(2){|i,j|r+=tri(i,j,l)}
puts r/3