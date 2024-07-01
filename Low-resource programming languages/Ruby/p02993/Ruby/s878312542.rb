File Edit Options Buffers Tools Ruby Help                                       
n=gets.chomp.to_i
s=n.to_s.length
b=[]
for i in 0..s
  b[i]=n%10
  n/=10
end

a=Hash.new(0)
count=0
for i in a
  a[i]+=1
end
for i in a
  if a[i]>=2
    count+=1
    break
  end
end

if count==1
  print "Bad"
else
  print "Good"
end



