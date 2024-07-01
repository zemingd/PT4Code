N, X = gets.split.map(&:to_i)
xs = gets.split.map(&:to_i)
target = (xs.push(X)).sort
ans = 0
a = []
(target.length-1).times{|num|
    a[num] = target[num+1] - target[num]
}

def gcd(a, b)
    a, b = b, a if a > b
    until a == 0
      a, b = b%a, a
    end
    return b
end

if a.length == 1
    ans = a[0]
else
    ans = gcd(a[0],a[1])
end
puts ans
