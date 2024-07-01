# Here your code !

# Here your code !
a,b,c,d,e,f=gets.split(" ").map(&:to_i)


an=100*a
bn=100*b

i=0

arr=Array.new((f/an).floor+1).map!{Array.new((f/bn).floor+1,0)}
h=Hash.new

((f/(an)).floor+1).times{
    j=0
    loop{
        s=an*i+bn*j
        if s>f
            break
        else
            arr[i][j]=s
        end
        j+=1
    }
    arr[i].delete(0)
    i+=1
}

k=0
g=0

arr.each{|item|
    item.each{|iitem|
        k=0
        (((f-iitem)/(c)).floor+1).times{
        l=0
        loop{
            t=c*k+d*l
            if (t+iitem)>f or (t/iitem.to_f)>(e/100.to_f)
                h[g]=(t+iitem-d),(t-d)
                break
            else
                g=(t/iitem.to_f)
            end
            l+=1
        }
        k+=1
        }
        
    }
}

print(h.max[1][0]," ",h.max[1][1])

