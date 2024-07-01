def gcd(x, y)
    y == 0 ? x : gcd(y, x % y)
end
n, x = gets.split.map(&:to_i)
puts gets.split.map{|i| (i.to_i - x).abs}.inject{|a, b| gcd(a,b)}
