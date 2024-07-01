n=gets.to_i

array=gets.split.map(&:to_i)


ll=array.length

if ll%2==1
    lll=(ll-1)/2
     array3=[array[0]]
      i=1
    lll.times{
        array3<<array[i]
        i=i+2}
    
    j=ll-1
    array4=[]
    lll.times{
        array4<<array[j]
        j=j-2
        
        
    }
    
    
elsif ll%2==0
  lll=ll/2
  
  
  array3=[]
  i=0
  lll.times{
      array3<<array[i]
      
      i=i+2
      
  }
  array4=[]
  j=ll-1
  
  lll.times{
      array4<<array[j]
      j=j-2
      
      
  }
  
  
  
  
    
    
end
array5=array4+array3



puts array5.join(" ")