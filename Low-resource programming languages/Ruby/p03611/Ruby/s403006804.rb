n=gets.to_i
a=Array.new(n)
a=gets.chomp.split(" ")
for i in 0..a.length-1
    a[i]=a[i].to_i
end

a.sort

max=a[n-1]
min=a[0]

maxcnt=0

for i in min-1..max+1
    cnt=0
    for j in 0..n-1
        if a[j]-1 == i || a[j]+1==i || a[j]==i
            cnt+=1
        end
    end
    if cnt>maxcnt
        maxcnt=cnt
    end
end

print maxcnt


