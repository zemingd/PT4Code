def gcd(a,b)
    while b > 0
        a,b = b,a%b
    end
    return a
end

n,x=gets.chomp.split.map(&:to_i)
xi=gets.chomp.split.map(&:to_i)
xi2 = xi.map{|v| (x-v).abs}
if n == 1
    puts xi2[0]
    exit
end

g = gcd(xi2[0],xi2[1])
2.upto(n-1) do |i|
    g=gcd(g,xi2[i])
end
puts g
