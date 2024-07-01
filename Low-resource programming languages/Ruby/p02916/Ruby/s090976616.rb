def gets_i
  gets.split.map(&:to_i)
end
n = gets.to_i
 
a = gets_i
b = gets_i
c = gets_i
ans=0

for i in 0..n-1
 　ans+=b[a[i]-1]
   ans+=c[a[i]-1] if i!=n-1 && a[i]+1==a[i+1]
end

puts ans