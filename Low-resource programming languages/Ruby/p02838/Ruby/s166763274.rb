MOD = 1000000007
n = gets.to_i
a = gets.split.map(&:to_i)

bits = 61
popcnt = [0] * bits

a.each {|x|
    bits.times {|b|
        if x & (1 << b) != 0
            popcnt[b] += 1
        end
    }
}

ans = 0
bits.times {|b|
    ans += popcnt[b] * (n-popcnt[b]) * 2**b % MOD
    
}

p ans % MOD