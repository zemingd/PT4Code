n, a, b = gets.split.map &:to_i
if (b - a) % 2 == 0
    print((b - a)/2)
else
    #to_1 = b - 1
    #to_n = n - a
    if b - 1 <= n - a
        print(b - 1)
    else
        print(n -a)
    end
end