n = gets.chomp.to_i
a = gets.chomp.split().map(&:to_i)
b = []
i = 0
while(true)
    j = a[i]
    if !b[j]
        b[j] = 1
    else 
        b[j] = b[j] + 1
    end
    i = i + 1
    if i == n
        break
    end
end
k = 0
while(true)
    sum = 0
    l = a[k]
    bl = b[l]
    b[l] = b[l] - 1
    c = b.compact
    c.each do |num|
        sum = sum + 0.5*num*(num - 1)
    end
    puts sum.to_i
    k = k + 1
    b[l] = bl
    if k == n
        break
    end
end