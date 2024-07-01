l, r = gets.split.map{|i|i.to_i%2019}
ans = 2019*2019
for i in l..r
    for j in i+1..r
        k = (i * j) % 2019
        ans = k if ans > k
        if ans == 0
            p 0
            exit
        end
    end
end
p ans
