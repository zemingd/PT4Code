a = gets.split(' ')
a[0] = a[0].to_i
a[1] = a[1].to_i
a[2] = a[2].to_i
count = 0
for i in a[0]..a[1] do
    if (a[2] % i == 0)
        count += 1
    end
end
puts(count)

