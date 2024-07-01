n,*d=$<.read.split.map(&:to_i)
a=0
for i in 0...n
  for j in 0...n
    a+=d[i]*d[j] if i!=j
  end
end
p a/2