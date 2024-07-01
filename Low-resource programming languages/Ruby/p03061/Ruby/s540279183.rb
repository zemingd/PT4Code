N = (gets).to_i
$arr = (gets).split(" ").map { |i| i.to_i }
$arr.sort!.reverse!

# キーとなる値を見つける
$key = $arr[0]
$arr.each do |a|
    if a.modulo(2)==0 then
        $key = a
        break
    end
end
$isKeyUsed = false

def gcd2(a,b)
    #puts "(#{a}, #{b})"
    a1 = a.gcd(b)
    if not $isKeyUsed then
        a2 = $key.gcd(b)
        if a2 > a1 then
            $isKeyUsed = true
            #puts "(#{$key}, #{b}) *"
            return a2
        end
        a2 = $key.gcd(a)
        if a2 > a1 then
            $isKeyUsed = true
            #puts "(#{$key}, #{a}) *"
            return a2
        end
    end
    return a1
end

def extend_gcd(n)
    if (n == N-2) then
        return gcd2($arr[n],$arr[n+1])
    end
    return gcd2($arr[n], extend_gcd(n+1))
end

puts extend_gcd(0)
