def gcd_array(array)
    a = array.shift
    b = array.shift
    ans = gcd(a,b)
    while(!array.empty?)
        a = array.shift
        ans = gcd(ans, a)
    end
    ans
end

def gcd(a, b)
    return a if b == 0
    gcd(b, a % b)
end

N = gets.to_i
monster = gets.split.map(&:to_i)
puts gcd_array(monster)
