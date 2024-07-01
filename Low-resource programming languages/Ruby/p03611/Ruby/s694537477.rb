n=gets.to_i
a=Array.new(n)
a=gets.chomp.split(" ")
for i in 0..a.length-1
    a[i]=a[i].to_i
end

a.sort

=begin
max=a[n-1]+1
if a[0]==0
    min=a[0]
else
    min=a[0]-1
end

maxcnt=0

for x in min..max
    cnt=0
    for j in 0..n-1
        if a[j]==0
            if  a[j]+1==x || a[j]==x
                cnt+=1
            end
        else
            if a[j]-1 == x || a[j]+1==x || a[j]==x
                cnt+=1
            end
        end
    end
    if cnt>maxcnt
        maxcnt=cnt
    end
end

print maxcnt
=end
b=a.sort

maxcnt=0

for i in 0..n-1
    cnt=0
    pib=b[i]
    for j in i..n-1
        if b[j]==pib || b[j]==pib+1 || b[j]==pib+2
            cnt+=1
        end
    end
    if cnt>maxcnt
        maxcnt=cnt
    end
end
print maxcnt



