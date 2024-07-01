str = gets.split
N,m = str[0].to_i, str[1].to_i

a = Array.new(N)
str = gets.split
for i in 0...N do
    a[i] = str[i].to_i
end
a.sort!

while m > 0
    b = a.pop/2
    l = 0
    r = N-1
    while l != r
        c = (l+r)/2
        if b >= a[c]
            l = c+1
        else
            r = c
        end
    end 
    a.insert(l,b)
    m -= 1
end

answer = 0
for i in 0...N do
    answer += a[i]
end
puts answer