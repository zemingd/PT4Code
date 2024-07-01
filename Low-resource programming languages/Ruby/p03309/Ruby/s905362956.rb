n=gets.to_i

a=gets.split.map(&:to_i)
for i in 0...n
    a[i]-=i+1
end
a.sort!
b=a[n/2]
k=0
for i in 0...n
    k+=a[i]-b
end
p k