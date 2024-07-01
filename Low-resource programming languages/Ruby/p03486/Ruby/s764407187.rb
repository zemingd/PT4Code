s=gets().chomp().split("")
t=gets().chomp().split("")
s=s.sort()
t=t.sort()
ls=s.length
lt=t.length
a=0

for i in 0..99
    if i>ls-1 or i>lt
        break
    end
    if s[i]<t[-1-i]
        a=1
        break
    elsif s[i]>t[-1-i]
        a=-1
        break
    end
end

if a==0
    if ls>lt
        a=1
    elsif ls<lt
        a=-1
    end
end

if a==1
    print("Yes")
else
    print("NO")
end