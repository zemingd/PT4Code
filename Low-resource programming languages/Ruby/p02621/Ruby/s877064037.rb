n,m,k = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)
 
i = 0
j = 0
sum = 0
count = 0
loop {
    if (i >= n) && (j >= m)
        break
    end
    if i >= n
        a[i] = 10000000000
    end
    if j >= m
        b[j] = 10000000000
    end
    if a[i] < b[j]
        sum = sum + a[i]
        count = count + 1
        i = i + 1
    else 
        sum = sum + b[j]
        count = count + 1
        j = j + 1
    end
    if sum > k
        count = count - 1
        break
    end
}

puts count