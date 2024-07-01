n,l=gets.chomp.split(" ").map{|s| s.to_i}
a=[]
m=10000000000
for i in 0..n-1
  a[i]=l+i
  if a[i].abs<=m.abs
    m=a[i]
  end
end
p a.inject(:+)-m