N,K,Q=gets.chomp.split(" ")
A=[]
for i in 0..(Q.to_i-1) do
  A[i]=gets.to_i
end
res=[]
for i in 0..(N.to_i-1) do
  res[i]=K.to_i
end
A.each do |d|
  for i in 0..(N.to_i-1) do
    if(d-1!=i) then
      res[i]=res[i]-1
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
  