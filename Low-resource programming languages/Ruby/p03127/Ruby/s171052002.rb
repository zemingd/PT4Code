def gcd(a, b)
    return a if b == 0
    gcd(b, a % b)
end

def solve(arr)    
    ans = arr.pop
    arr.each do |i|
        ans = gcd(ans, i)
    end
    ans
end

n = gets.to_i
a = gets.split.map(&:to_i).sort

puts solve(a)
