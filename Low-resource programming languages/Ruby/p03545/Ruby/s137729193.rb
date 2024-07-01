
n=gets.chomp.split("").map(&:to_i)
plus_minus=Array.new(n.length-1,"+")

for i in 1..(2**plus_minus.length)
  v=plus_minus
  result=n[0]

    for j in 1..v.length
        vv=i&(1<<j)
        if vv!=0
            v[j-1]="-"
       
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