n=gets.to_i
i=1
while i<=n
  c=0
  (1..i).each{|j|c+=1 if i%j==0}
  if c==8
    p i
    break
  end
  i+=2
end
