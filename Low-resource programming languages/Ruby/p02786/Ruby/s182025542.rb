h=gets.to_i
res=0
i=0
while true
    res+=2**i
    h/=2
    i+=1
    break if h==0
end
puts res