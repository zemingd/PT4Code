n,m = gets.split.map(&:to_i)

arr1 = []

m.times{
    
    arr1<<gets.split.map(&:to_i)}
    


arr1 = arr1.sort

i=1
(m-1).times{
    
    
    if arr1[i][0] == arr1[i-1][0]
        
        arr1.delete_at(i)
        
    elsif   arr1[i][1] <= arr1[i-1][1]
        arr1.delete_at(i-1)
        
    else
        i+=1
    end
    
    
    
}





now = 0
ll = arr1.length
j = 0
ans = 0

loop{
    

    
     ans+=1
    
    
    now=arr1[j][1]
    
    
    
    loop{
        
        if arr1[j+1] && arr1[j+1][0]<now
            j+=1
    
        
       else
           
           break
       end
        
        
        
    }
    
    
    
     j+=1
    
    if j>=ll
      break
     end
    
    
   
    
    
    
 }


puts ans

