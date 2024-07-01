n = gets.to_i
a = gets.split.map(&:to_i)
cnt = 0
if a.uniq.length == 1
    puts n/2
else
    for i in 0..n/2-1
    if a[i] != a[i+2]
        cnt += 1
        a[i+2] = a[i]
    end
    end
    puts cnt
end