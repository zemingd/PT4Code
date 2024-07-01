# cook your code here
n = gets.to_i     

a = gets.split.map { |x| x.to_i }   

a = a.sort
a = a.reverse 
flag = 0
mul = 1  

while flag<2 and a.size>0
    x = a.count(a[0])
    if x>3 
        flag=2;
        mul = a[0]*a[0];
    elsif x>1        
        flag += 1         
        mul *= a[0]
    end     
    a.delete(a[0])
end 

if flag<2  
    puts "0"      
else       
    puts mul  
end 
