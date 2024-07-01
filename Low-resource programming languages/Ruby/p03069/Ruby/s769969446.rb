N=gets.to_i
S=gets.chomp

s=S.split("").select {|x|x=="#"}.length
d=N-s

l=[0,0]
r=[s,d]

ret = N
(0..(N-1)).each do |i|
    rr = l[0] + r[1]
    ret = rr if rr < ret
    if S[i] == "#"
        r[0]-=1
        l[0]+=1
    else
        r[1]-=1
        l[1]-=1
    end
end
puts ret
