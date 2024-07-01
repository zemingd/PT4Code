# Here your code !


n=gets.to_i
array=[]
n.times{
    array<<gets.to_i
    
    
}

if n==1 
   puts array[0]

else

a=array[0]
i=1

(array.length-1).times{
 b=array[i]
 c=a.lcm(b)
 a=c
 
 i=i+1
    
    
    
    
}


puts a
end
    
    