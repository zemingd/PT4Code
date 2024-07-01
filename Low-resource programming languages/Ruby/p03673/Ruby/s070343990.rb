n=gets.to_i

array=gets.split.map(&:to_i)

array2=[]
i=0

n.times{
   array2<<array[i]
   
   array2=array2.reverse
   
   
   i=i+1
   
   
    
    
    
}

puts array2.join(" ")