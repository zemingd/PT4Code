n=gets.chomp.to_i
t=[]
for i in 0..n-1
  s,p=gets.chomp.split(" ")
  t[i]=[s,p.to_i,i+1]
end
t=t.sort{|a,b|
2*(a[0]<=>b[0])+(b[1]<=>a[1])
}

for i in 0..n-1
  puts t[i][2]
end
