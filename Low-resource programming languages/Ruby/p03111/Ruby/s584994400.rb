n,a,b,c=gets.split.map(&:to_i)
takearray=[]
n.times{
    long=gets.to_i
    takearray.push(long)
}

i=0
ans=10**10
(4**n).times{
    nisin=i.to_s(4).rjust(n, '0').split('').map(&:to_i) 
    agroup=[]
    bgroup=[]
    cgroup=[]
    cost=0
    
    n.times{|k|
        if nisin[k]==1
            agroup.push(takearray[k])
        elsif nisin[k]==2
            bgroup.push(takearray[k])
        
        elsif nisin[k]==3
            cgroup.push(takearray[k])
        
        end
    }
    
    if agroup.count==0 || bgroup.count==0 || cgroup.count==0
        i+=1
        next
    end
    
    cost+=(agroup.count-1)*10
    cost+=(bgroup.count-1)*10
    cost+=(cgroup.count-1)*10
    
    cost+=(agroup.inject(:+)-a).abs
    cost+=(bgroup.inject(:+)-b).abs
    cost+=(cgroup.inject(:+)-c).abs
    
    ans=[cost,ans].min
    
    i+=1
}

puts ans