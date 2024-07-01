# Your code here!
n,s=gets.split
na=n.split("")
ll=na.length
n=n.to_i
s=s.to_i
arr=gets.split.map(&:to_i)

(5-ll).times{
    na=["0"]+na
    
}
arr2=[0]+arr
i=5-ll

loop{
    if arr.include?(na[i].to_i) && na[i].to_i!=9
       na[i]=na[i].to_i+1
       na[i]=na[i].to_s
       
       k=1
       (4-i).times{
           na[i+k]="0"
           k+=1
       }
       
       elsif na[i]=="9"  && arr.include?(na[i].to_i)
       na[i-1]=na[i-1].to_i+1
       k=0
       (5-i).times{
           na[i+k]="0"
           k+=1
       }
       i=i-1
   else
       i+=1
   end
   
   if i==5
       break
   end
    
}

p na.map(&:to_i).join.to_i

