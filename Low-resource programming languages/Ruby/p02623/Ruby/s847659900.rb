n,m,k=gets.split.map(&:to_i)

a=gets.split.map(&:to_i)
b=gets.split.map(&:to_i)
result=0
count=0
while result<k
  
 if a[0].nil?
     result+=b[0]
     b.shift(1)
     count+=1
     next
elsif b[0].nil?
result+=a[0]
a.shift(1)
count+=1
end

if a[0]<b[0]
    result+=a[0]
   a.shift(1)
    count+=1
elsif a[0]>b[0]
    result+=b[0]
    b.shift(1)
    count+=1
else a[0]==b[0]
    if a[1]>=b[1]
        result+=b[0]
       b.shift(1)
           count+=1
    else
    result+=a[0]
   a.shift(1)
    count+=1
    end
end
if result>=k
    count-=1
break
end
    
end
p count