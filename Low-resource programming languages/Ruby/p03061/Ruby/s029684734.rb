n = gets.to_i
a = gets.split.map(&:to_i)

mae = Array.new(n)
usi = Array.new(n)

mae[0] = a[0]
usi[0] = a[n-1]

(1...n).each{|i|
    mae[i] = mae[i-1].gcd a[i]
    usi[i] = usi[i-1].gcd a[n-1-i]
}

ret = [mae[n-2], usi[1]].max

(1..n-2).each{|i|
    ret = [ret, mae[i-1].gcd(usi[i-1])].max
}

p ret