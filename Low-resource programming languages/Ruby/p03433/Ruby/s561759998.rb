a=gets.chomp.to_i
b=gets.chomp.to_i

if(a>=500){
    while(a>=0){
       a-=500
    }
 }
puts a>b ? "No" : "Yes"