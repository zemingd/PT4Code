n=gets.to_i
a=gets.split.map(&:to_i)
b=gets.split.map(&:to_i)
c=gets.split.map(&:to_i)

d=[]
for i in 0..n-2
    j=i+1
    if a[i]+1==a[j]
        v=a[i]-1
        d.push(c[v])
    end
end

bb=b.inject(&:+)
dd=d.inject(&:+)
puts bb+dd