# Your code here!
n,k=gets.split
n=n.to_i
k=k.to_i

array2=[]

n.times{
    
    a,b=gets.split
    
    
    a=a.to_i
    b=b.to_i
    array2<<[a,b]
    
    
    
}



array2=array2.sort
answer=0
i=0
loop{
    answer+=array2[i][1]
    if answer>=k
        break
    else 
        i+=1
    end
    
    
    
    
    
}





puts   array2[i][0]
