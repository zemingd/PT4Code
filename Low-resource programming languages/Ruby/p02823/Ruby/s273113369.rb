n, a, b = gets.split.map &:to_i
if ((b - a) % 2 == 0)
    print((b - a)/2)
else
    if a == 1
        print((b - 2)/2 + 1)
    elsif b == n
        print((b - (a + 1))/2 + 1)
    elsif (b - 1 < n - a)
        print(b - 1)
    else
        print(n - a)
    end
end