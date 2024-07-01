n,k=gets.to_s.split(" ").map{|s| s.to_i}
a=gets.to_s.split(" ").map{|s| s.to_i}
count=Array.new

for m in 0..n+1
  count[m]=0
end
for m in 0..n-1
  count[a[m]]+=1
end
count.delete(0)
count.sort!.reverse!
print n-(count[0..k-1].inject(:+))