h,w=gets.split.map(&:to_i)

arr=[]


h.times{

    arr<<gets.chomp.split("")}
    
arr<<Array.new(w,0)
   

 i=0   
(h*w).times{
    point=0
    tate=i/h
    yoko=i%h
    
    
    
    if arr[tate][yoko]=="."
      point+=1
elsif    arr[tate+1][yoko] && arr[tate+1][yoko]=="#" 
point+=1

elsif    arr[tate-1][yoko] && arr[tate-1][yoko]=="#" 
point+=1

elsif    arr[tate][yoko+1] && arr[tate][yoko+1]=="#" 
point+=1

elsif    arr[tate][yoko-1] && arr[tate][yoko-1]=="#" 
point+=1
    
end
    
    
 if point==0  
     puts "No"
     exit
 end
    
    
 i+=1 
 

}
   
   
   puts "Yes" 
    
