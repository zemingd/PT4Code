N,K,Q=gets.chomp.split(" ")
n=N.to_i
k=K.to_i
q=Q.to_i
res=Array.new(n,0)
for i in 0..(q-1) do
  a=gets.to_i
  res[a-1]+=1
end
res.each do |res|
  if k-(q-res)>0 then
    puts("Yes")
  else
    puts("No")
  end
end