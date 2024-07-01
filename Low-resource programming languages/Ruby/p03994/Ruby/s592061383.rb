s=gets.chop
k=gets.to_i
res=''
i=0
s.bytes{|b|
    x=b-97
    if x>0 and k>=26-x
        res+=?a
        k-=26-x
    else
        res+=s[i]
    end
    i+=1
}
res[-1]=((res[-1].ord-97+k%26)+97).chr
puts res
