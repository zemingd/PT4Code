# Here your code !esa=



n=gets.to_i
array=[]

n.times{
    ss=gets.to_i
    
    array<<ss}
array=array.sort

answer=0
i=0
n.times{
   answer+=array[i] 
    i=i+1
    
}
k=0
kk=-1

loop{
   if array[k]%10!=0
      kk=k
     break
    else k=k+1
    
end

if   k==n

break

end

    
    
    
    
}


if  answer%10==0 &&  kk==-1
  puts  0
 elsif answer%10==0
  puts answer-array[k]

else
  puts answer
end









