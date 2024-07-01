n = gets.chomp.split(" ").map(&:to_i)
sum = 0
(n[0]+1).times{|t|
    sum+=10000*t
(n[0]-t+1).times{|k|
    sum+=5000*k
    sum+=1000*(n[0]-t-k)
    if sum == n[1] then
        print t," ",k," ",(n[0]-t-k)
        exit
    end
    sum = 10000*t
}
if sum == n[1] then
    print t," ",k," ",(n[0]-t-k)
    exit
end
sum = 0
}
print "-1 -1 -1"