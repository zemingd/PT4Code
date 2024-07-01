n = gets.chomp.to_i
a = gets.chomp.split().map(&:to_i)
b = []
i = 1
j = 0
count = 0
check_one = false
for j in 0..(n-1)
    if a[j] == 1
        check_one = true
    end
    if  a[j] == i
        i += 1
        count += 1
    end
end
print check_one ? a.size - count : '-1'
