n = gets.to_i

def SQRT(n)
    s=1; 
    while (s*s>n||n>=(s+1)*(s+1)) do 
        s=(n/s+s)/2
    end 
    return s
end
ans = 11
for a in 1..SQRT(n) do
    if n%a==0 then
        b = n/a
        len = b.to_s.length
        ans = len
    end
end
puts ans