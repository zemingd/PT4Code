def gcd(a ,b)
    return a if a == b
    return gcd(b, a - b) if a > b
    return gcd(a, b - a) if a < b
end

n, x = gets.split.map(&:to_i)
coords = gets.split.map(&:to_i).map{|it| (it - x).abs}

while coords.count > 1
    coords.push gcd(coords.pop, coords.pop)
end

puts coords[0]
