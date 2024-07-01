n=gets.chomp.split("").map(&:to_i)
plus_minus=Array.new(n.length-1,"+")

for i in 0..(2**plus_minus.length)-1
  v=plus_minus
  result=n[0]

    for j in 0..v.length-1
        vv=i&(1<<j+1)
        if vv!=0
            v[j]="-"
            p  "a"
        end
            
    end

    for k in 0..v.length-1
        if v[k]=='+'
            result+=n[k+1]
        else
           result-=n[k+1]
        end
    end
  
 
    
    if result==7
        puts "#{n[0]}#{v[0]}#{n[1]}#{v[1]}#{n[2]}#{v[2]}#{n[3]}=7"
    exit
    end
end