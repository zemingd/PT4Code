@s=Array.new(1000010)
@a=Array.new(1000010,0)
@e97=1000000007
n,m=gets.split.map(&:to_i)
for i in 1..m do
    p = gets.to_i
    @a[p] = 1
end

def rec(x)
    if x == 0
        return 1;
    end
    if x < 0 
        return 0;
    end
    if @a[x] == 1
        return 0
    end
    if @s[x] != nil
        return @s[x]
    end

    sum = (rec(x - 1) + rec(x - 2)) % @e97
    @s[x] = sum
    return sum 
end

p rec(n) % 1000000007
