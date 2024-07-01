n=gets.chomp.to_i
f=[]
f[0]=0
f[1]=0
for i in 2..n-1
  f[i]=f[i-1]+i-1
end
s=[]
for i in 0..n-1
  s[i]=gets.chomp.split("").sort.inject(:+).to_s
end
s.sort!.push(0)
ans=0
t=0
c=1
for i in 0..n
  if t==s[i]
    c+=1
  else
    ans+=f[c]
    c=1
    t=s[i]
  end
end

puts ans