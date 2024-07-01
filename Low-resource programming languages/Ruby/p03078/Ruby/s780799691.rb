x,y,z,k=gets.split.map(&:to_i)
aarray=gets.split.map(&:to_i).sort
barray=gets.split.map(&:to_i).sort
carray=gets.split.map(&:to_i).sort

def returnArray(array1,array2,limit,mode)
    count1=array1.count
    count2=array2.count
    indexarray=Array.new(count1,-1)
    ansarray=[]
    
    limit.times{
        i=count1-1
        max=0
        maxindex=0
        
        count1.times{
        if indexarray[i]<-count2
            i-=1
            next
        end
        
        if array1[i]+array2[indexarray[i]] > max
            max=array1[i]+array2[indexarray[i]]
            maxindex=i
        end
        
        if indexarray[i]==0
            break
        end
        i-=1
         }
        if mode==1
            ansarray.push(max)
        else
            ansarray.unshift(max)
        end
        
        indexarray[maxindex]-=1
        
    }
    
    return ansarray
    
end

longarray=returnArray(aarray,barray,aarray.count*barray.count,2)
ans=returnArray(carray,longarray,k,1)

ans.map{|value|
    puts value
}