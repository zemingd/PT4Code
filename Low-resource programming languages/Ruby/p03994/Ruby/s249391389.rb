s=gets.chop
k=gets.to_i
n=s.size
for i in 0..n-1
    x=26-s[i].ord+97
    if x>0 and k>=x
        s[i]=?a
        k-=x
    end
end
s[-1]=((s[-1].ord-97+k%26)+97).chr
puts s
