N = gets.to_i
X = gets.chomp
c = X.count("1")
x = X.to_i(2)
m = 1 << (N - 1)
f = [0]
1.upto(2 * 10 ** 5){|i|
    pop = i.to_s(2).count("1")
    f[i] = f[i % pop] + 1
}
N.times{|i|
    if x[N - i - 1] == 1
        n = x ^ m
        if n > 2 * 10 ** 5
            puts f[n % (c - 1)] + 1
        else
            puts f[n]
        end
    else
        n = x ^ m
        if n > 2 * 10 ** 5
            puts f[n % (c + 1)] + 1
        else
            puts f[n]
        end
    end
    m >>= 1
}
