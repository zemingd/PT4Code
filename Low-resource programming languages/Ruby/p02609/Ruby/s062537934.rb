n=gets.to_i
x=gets.chomp.to_s

x_all=Array.new(n,x.to_i(2))

i=n
#p x.to_s()
while i>0
    count=0
   
 
    v=x_all[i-1]
     v=v<<1
        #p v.to_s(2)
    if  v& (1<<i)!=0
    v|=(0<<i)
    else
    v|=(1<<i)
    end
  
    #p v.to_s(2)
    
    while v!=0
    v_one=v.to_s(2)
    v_one=v_one.count("1")

    
    vv=v%v_one
    count+=1
    v=vv
    if vv==0
        break
    end
    end
    
p count
i-=1
end