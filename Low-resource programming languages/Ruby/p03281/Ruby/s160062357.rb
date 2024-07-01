n=gets.to_i
a=0
for i in 1..n
  next if i.even?
  c=0
  for j in 1..i
    c+=1 if i%j==0
  end
  a+=1 if c==8
end
p a