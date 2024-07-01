n=gets.to_i
ans=0
for i in 1..n
  c=0
  for j in 1..i
    if i%j==0; c+=1; end
  end
  if c==8;ans+=1;end
end
puts ans