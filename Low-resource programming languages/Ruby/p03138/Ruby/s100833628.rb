N,K=gets.split.map(&:to_i)
A=gets.split.map(&:to_i)

COUNT=Array.new(40,0)
A.each do |a|
    40.times do |i|
        COUNT[i]+=1 if a[i]==1
    end
end
DP=Array.new(40){Array.new(2)}

def get_val(order,underflag)
    return DP[order][underflag] if DP[order][underflag]
    val_0=2**order*COUNT[order]
    val_01=2**order*[COUNT[order],N-COUNT[order]].max
    if order!=0
        g01,g0=get_val(order-1,1),get_val(order-1,0)
    else
        g01,g0=0,0
    end
    ans=-1
    if underflag==1
        ans=val_01+g01
    elsif K[order]==1
        ans=[val_0+g01,val_01+g0].max
    else
        ans=val_0+g0
    end
    return DP[order][underflag]=ans
end

p get_val(39,0)