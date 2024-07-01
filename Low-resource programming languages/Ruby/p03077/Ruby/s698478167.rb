a=[]
n=gets.chomp.to_i
for i in 0..4
  a[i]=gets.chomp.to_i
end
if n/(a.sort[0])==1
  puts (n/(a.sort[0]))+4
else
  puts (n/(a.sort[0]))+5
end