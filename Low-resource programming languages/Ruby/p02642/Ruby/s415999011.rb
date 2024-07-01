require 'prime'
n=gets.to_i
m=gets.split.map(&:to_i)
l=m.uniq
v=m.length-l.length

count=0

v=[]
for i in 0..m.length-1
    if m[i].nil?
    break
    end
    if m[i]<10
        if v.index(m[i]).nil?
        count+=1
        v<<m[i]
        else
        count-=1
        m.delete(m[i])
        end
        
    elsif Prime.prime?(m[i])
    count+=1
    if v.index(m[i]).nil?
    count+=1
    v<<m[i]
    else
    count-=1
    m.delete(m[i])
    end
    
    end
    

end
p count