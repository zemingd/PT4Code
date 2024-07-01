n=gets.to_i
a=gets.split.map(&:to_i)
v=a.uniq!
if v.length==1
    p a[0]
    exit
end

odd=0
even=0

for i in 0..a.length-1
    if odd==1 && even==1
        p 1
        exit
    end
    
    if a[i]%2==1
        odd=1
    else
    even=1
    end
end

p 2