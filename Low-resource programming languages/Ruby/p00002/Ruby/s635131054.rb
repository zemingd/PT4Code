a=[]
b=[]
c=[]
i=0
while b = gets
  a << b.chomp.split(' ').map(&:to_i)
end
while i < a.length
  c[i] = a[i].sum.to_s
  puts c[i].length
  i+=1
end

