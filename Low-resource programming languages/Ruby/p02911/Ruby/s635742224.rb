N,K,Q=gets.chomp.split(" ")
n=N.to_i
k=K.to_i
res=[]
for i in 0..(n-1) do
  res[i]=k
end
for i in 0..(Q.to_i-1) do
  a=gets.to_i
  for i in 0..(n-1) do
    if(a-1!=i) then
      res[i]-=1
    end
  end
end
res.each do |res|
  if res>0 then
    puts("Yes")
  else
    puts("No")
  end
end