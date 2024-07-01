n=gets.to_i

arr=gets.split.map(&:to_i)

arr2=[]

i=0
n.times{
    arr2<<arr[i]-i
    
    i+=1
}


arr3=arr2.sort



key=arr3[n/2]
   
ans=0
j=0
n.times{
   ans+=(arr[j]-key-j).abs
    
   j+=1 
}
  
puts ans