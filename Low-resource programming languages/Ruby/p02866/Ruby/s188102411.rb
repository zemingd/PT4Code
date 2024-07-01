$mod = 998244353

def power(x, n)
    n == 0 ? 1 : ((n.odd? ? x : 1) * power(x ** 2 % $mod, n / 2) % $mod)
end

n = gets.to_i
h = Array.new(n+1, 0)
d = gets.split.map(&:to_i)
d.each {|e| h[e.to_i] += 1}

if d[0] != 0 || h[0] != 1
    puts 0
else
    ans = 1
    n -= 1
    i = 1

    while n != 0
        ans = ans * power(h[i-1], h[i]) % $mod
        n -= h[i]
        i += 1
    end

    puts ans
end

