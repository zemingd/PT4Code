n,m=gets.split.map(&:to_i)

dsarray=[]

m.times{
    dsarray<<gets.split.map(&:to_i)
}
parray=gets.split.map(&:to_i)


answer=0

(2**n).times{|i|

    nisin=i.to_s(2).rjust(n, '0').split('')
    lightcount=0

    m.times{|j|
        ll=dsarray[j].length
        k=1
        switchcount=0
        (ll-1).times{
            switch=dsarray[j][k]
            if nisin[switch-1]=="1"
                switchcount+=1
            end
            k+=1
        }
        
        if switchcount%2==parray[j]
            lightcount+=1
        end
        
    }
    
    if lightcount==m
        answer+=1
    end
    
}


puts answer