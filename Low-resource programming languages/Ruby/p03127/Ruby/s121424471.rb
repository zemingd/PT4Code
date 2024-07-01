n=gets.to_i
a=gets.split.map{|u| u.to_i}

def gcd(x,y)
    if x < y
        x,y=y,x
    end
    if y==0
        return x
    else
        return gcd(y,x%y)
    end
end

k=a[0]
n.times do |i|
    k=gcd(k,a[i])
end

puts k