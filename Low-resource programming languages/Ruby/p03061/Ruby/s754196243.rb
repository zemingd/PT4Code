def gcd(a, b)
    while b != 0 do
       c = a % b; a = b; b = c;
    end
return a
end
t = gets.to_i
input = gets.split(" ").map{|item|item.to_i}
ans =[]
input.push(0)
t.times{|k|
    n = 0
    if k == 0 then
        yaku = input[1]
    else
        yaku = input[0]
    end

    while n < k do
        yaku = gcd(yaku,input[n])
        n += 1
    end
    n += 1
    while n <= t do
        yaku = gcd(yaku,input[n])
        n+=1
    end
    ans.push(yaku)
}
print ans.max