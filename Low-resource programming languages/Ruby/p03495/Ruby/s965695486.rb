n,k=gets.to_s.split(" ").map{|s| s.to_i}
a=gets.to_s.split(" ").map{|s| s.to_i}
count=Array.new
count[0]=0
for m in 1..n
  count[m]=a.count(m)
end
count.sort!.slice!(n-k+1,n)
print count.inject(:+)