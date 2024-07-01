def gcd(a, b)
    return a if b == 0
    gcd(b, a % b)
end

def solve(arr)    
    a = arr.pop
    b = arr.pop
    return gcd(a, b) if arr.empty?
    solve([gcd(a, b)] + arr)
end

n = gets.to_i
a = gets.split.map(&:to_i)

puts solve(a)
