
$week=gets.to_i
n=i=0.to_i
 def myloop(n,i)
        if i==$week
                return n
        else
                n+=n*0.05
                j=(n % 1000).to_i
                n+=1000-j if j!= 0
                myloop(n,i+1)
        end
 end
money=myloop(100000,0).to_i
print money,"\n"