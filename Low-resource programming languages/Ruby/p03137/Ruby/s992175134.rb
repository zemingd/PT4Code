
def solve()

end

n, m = gets.split.map(&:to_i)
x = gets.split.map(&:to_i)
x.sort!

d = [m-1]
for i in 0...(m-1)
    d[i] = x[i+1] - x[i]
end
d.sort!

if m <= n
    puts 0
else
    ans = x[m-1] - x[0]
    for i in 0...(n-1)
        ans -= d[m-2-i]
    end
    puts ans
end

