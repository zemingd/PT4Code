h,w=gets.split.map(&:to_i)

arr=[]

arr2=Array.new(h+2).map{Array.new(w+2,0)}


h.times{

    arr<<gets.chomp.split("")}
j=1    
h.times{
   arr2[j][1..w]=arr[j-1]
    j+=1
}





 i=0   
(h*w).times{
    point=0
    tate=i/h+1
    yoko=i%h+1
    
    
    
    if arr2[tate][yoko]=="."
      point+=1
elsif    arr2[tate+1][yoko] && arr2[tate][yoko]=="#" 
point+=1

elsif    arr2[tate-1][yoko] && arr2[tate-1][yoko]=="#" 
point+=1

elsif    arr2[tate][yoko+1] && arr2[tate][yoko+1]=="#" 
point+=1

elsif    arr2[tate][yoko-1] && arr2[tate][yoko-1]=="#" 
point+=1
    
end
    
    
 if point==0  
     puts "No"
     exit
 end
    
    
 i+=1 
 

}
   
   
   puts "Yes" 
    
