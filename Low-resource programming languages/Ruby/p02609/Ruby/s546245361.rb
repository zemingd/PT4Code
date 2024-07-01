N=gets.to_i
S=gets.chomp
X=S.to_i(2)

def popcount(n)
    n.to_s(2).count('1')
end

def f(n)
    count = 0
    while n != 0
        count += 1
        n = n % popcount(n)
    end
    count
end

pcount_base = S.count('1')
N.downto(1) do |i|
    if X[i-1] == 1
        if pcount_base == 1
            puts 0
        else
            pcount = pcount_base - 1
            xb ||= X % pcount
            x = xb - ((1<<(i-1)) % pcount)
            puts 1+f(x%pcount)
        end
    else
        pcount = pcount_base + 1
        xa ||= X % pcount
        x = xa + ((1<<(i-1)) % pcount)
        puts 1+f(x%pcount)
    end
end