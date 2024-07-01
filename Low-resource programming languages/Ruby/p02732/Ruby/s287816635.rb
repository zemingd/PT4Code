for i in 0..n-1
    v=a_tally.dup
    v[a[i]]-=1
    value=v.values
    #p value
    count=0
   value=value.delete(1)
    for j in 0..value.length-1
        if value[j]>=2
            
            count=count+(value[j]*(value[j]-1))/2
        end
        
    end
    p count
    
end