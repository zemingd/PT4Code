@s=Array.new(1000010)
@a=Array.new(1000010,0)
@e97=1000000007
n,m=gets.split.map(&:to_i)
for i in 1..m do
    p = gets.to_i
    @a[p] = 1
end

@s[0] = 1

for i in 1..n do
    if @a[i]==1
        @s[i] = 0
    else
        s1 = @s[i - 1]
        s2 = i >= 2 ? @s[i - 2] : 0
        @s[i] = (s1 + s2) % @e97
    end
end


p @s[n]
