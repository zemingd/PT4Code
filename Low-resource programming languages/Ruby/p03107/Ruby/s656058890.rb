s=gets.chomp.split("")
a=[s.pop]
res=0
while c=s.pop
    if a.size>0 && a[-1]!=c
        a.pop
        res+=2
    else
        a << c
    end
end
p res