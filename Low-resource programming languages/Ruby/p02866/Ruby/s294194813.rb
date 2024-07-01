$mod = 998244353

def power(x, n)
    n == 0 ? 1 : ((n.odd? ? x : 1) * power(x ** 2 % $mod, n / 2) % $mod)
end

n = gets.to_i
d = Array.new(n+1, 0)
gets.split.each {|e| d[e.to_i] += 1}

if d[0] != 1
    puts 0
else
    ans = 1
    n -= 1
    i = 1

    while n != 0
        ans = ans * power(d[i-1], d[i]) % $mod
        n -= d[i]
        i += 1
    end

    puts ans
end

