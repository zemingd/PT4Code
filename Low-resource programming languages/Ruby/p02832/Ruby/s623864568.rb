n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
a = a.unshift(0)
i = 0
count = 0
while true

    if a[i] == i
        i += 1
    else
        a[i] = " "
        count += 1
    end
    a.delete(" ")
    if a.size == i || a == [0]
        break
    end
end
if a == [0]
    puts "-1"
else
    puts count
end