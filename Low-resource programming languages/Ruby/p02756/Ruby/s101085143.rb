

# gets.to_i
# gets.split.map(&:to_i)
# N.times.map{gets.to_i}
# N.times.map{gets.split.map(&:to_i)}
# 

#N,M=gets.split.map(&:to_i)
s=gets.chomp
Q=gets.to_i
add1=[]
add2=[]

rev=0
Q.times do |i|
    q=gets.chomp
    if q[0]=="1"
        rev=1-rev
    else
        _,f,c=q.split
        f=f.to_i
        if rev==0
            if f==2
                add1 << c
            else
                add2 << c
            end
        else
            if f==2
                add2 << c
            else
                add1 << c
            end
        end
    end
end

if rev==0
    print add2.reverse!.join("")
    print s
    print add1.join("")
else
    print add1.reverse!.join("")
    print s.reverse!
    print add2.join("")
end
puts