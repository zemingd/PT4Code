# Your code here!

a = []
a = gets.split.map(&:to_i)
n = gets.chomp
x = n.chars
#p x

t=x[0]
#p t
cnt=[]
#p cnt
c=0
for i in 0..a[0]-1
#p cnt
    if t == x[i]
        c+=1
    else
        t = x[i]
        cnt.push(c)
        c=1
        end
end
cnt.push(c)#次のループでpushされるので最後の分
#p cnt
#cnt.delete_at(0)
#p cnt

cnt_l = 1
if x[0]=="1"
    for i in 0..cnt.length-2*a[1]-1
    u = 0
        for j in i..i+2*a[1]
        u += cnt[j]
        end
    
    #p u
    if u >= cnt_l
        cnt_l = u
    end
    #p u
    end
else
     for i in 0..cnt.length-2*a[1]-1
    u = 0
        for j in i..i+2*a[1]
        u += cnt[j]
        end
    
    #p u
    if u >= cnt_l
        cnt_l = u
    end
    #p u
    end
end

puts cnt_l
