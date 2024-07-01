N = gets.to_i
lst=gets.chomp.split(" ").map(&:to_i)
lst=lst.sort
flag="Yes"
if N%3!=0
  flag="No"
else
  n=N/3
match=0
for i in 0..n-2 do
  if lst[i]!=lst[i+1]
    match=1
    break
  end
end
for i in 0..n-2 do
  if lst[i+n]!=lst[i+1+n]
    match=1
    break
  end
end
for i in 0..n-2 do
  if lst[i+n+n]!=lst[i+1+n+n]
    match=1
    break
  end
end
if match==1
  flag="No"
else
  a=lst[0]
  b=lst[n]
  c=lst[n+n]
if(a^b!=c || b^c!=a || c^a!=b)
  flag="No"
end
end
end
if lst[N-1]==0
  flag="Yes"
end
  print flag
