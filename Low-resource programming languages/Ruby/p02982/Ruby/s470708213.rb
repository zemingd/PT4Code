n,d=gets.chomp.split(" ").map{|s| s.to_i}
x=[]
c=0
for i in 0..n-1
  x[i]=gets.chomp.split(" ").map{|s| s.to_i}
end

for i in 0..n-1
  for j in i..n-1
    if i!=j
      a=[]
      for k in 0..d-1
        a[k]=(x[i][k]-x[j][k])**2
      end
      b=(a.inject(:+))**(1/2.0)
      if (b.to_i)==b
        c+=1
      end
    end
  end
end

puts c