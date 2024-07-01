n, k = gets.chop.split.map(&:to_i)

res = 0.0
for i in 1..n
    tmp = 1.0
    nn = i
    while nn < k do
        nn *= 2
        tmp /= 2.0
    end
    res += tmp
end
res /= n;
puts(res)