n=gets.to_i
a=Array.new(n)
a=gets.chomp.split(" ").map(&:to_i)
=begin
for i in 0..a.length-1
    a[i]=a[i].to_i
end
=end

b=a.sort

maxcnt=0

for i in 0..n-1
    cnt=0
    pib=b[i]
    for j in i..n-1
        if b[j]==pib || b[j]==pib+1 || b[j]==pib+2
            cnt+=1
        else
            break
        end
    end
    if cnt>maxcnt
        maxcnt=cnt
    end
end
print maxcnt



