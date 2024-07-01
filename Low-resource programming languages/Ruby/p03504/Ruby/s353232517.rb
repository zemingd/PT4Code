# Your code here!

n,c=gets.split
n=n.to_i
c=c.to_i

array=[]


n.times{
    array<<gets.split.map(&:to_i)}

array2=[]
c.times{
    array2<<[]
    
}
i=0
n.times{
    
    
    
    j=-1
    (array[i][1]-array[i][0]+1).times{
        
        array2[array[i][2]-1]<<array[i][0]+j
        j+=1
    }
    
    
    
    
   
   i+=1
}

s=0
c.times{
    
    array2[s]=array2[s].uniq
}


array2=array2.flatten

sss=array2.max_by{ |gg| array2.count(gg)}


puts array2.count(sss)






