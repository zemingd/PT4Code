d,n=gets.split.map &:to_i
a=1
while n>0
    c=0
    b=a
    while b%100==0
        b/=100
        c+=1
    end
    n-=1 if c==d
    a+=1
end
puts a-1
