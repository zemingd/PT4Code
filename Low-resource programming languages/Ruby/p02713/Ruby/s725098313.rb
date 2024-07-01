k = gets.to_i
ans = 0
def gcd(i,j,k)
    x = i
    y = j
    z = k
    while y != 0
        x,y = y,x%y
    end
    while z != 0
        x,z = z,x%z
    end
    return x
end

if k>=3
    k.times do |a|
        (a+1).upto(k-2) do |b|
            (b+1).upto(k-1) do |c|
                ans += 6*gcd(a+1,b+1,c+1)
            end
        end
    end
end

if k>=2
    k.times do |a|
        k.times do |b|
            if a != b
                ans += 3*gcd(a+1,a+1,b+1)
            end
        end
    end
end
k.times do |a|
    ans += gcd(a+1,a+1,a+1)
end
puts ans