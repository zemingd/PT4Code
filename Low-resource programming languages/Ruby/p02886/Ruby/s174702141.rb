n,*d=$<.read.split.map(&:to_i)
a=0
for i in 0..d.size
  for j in 0..d.size
    a+=i*j if i!=j
  end
end
p a/2