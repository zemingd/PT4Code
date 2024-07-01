n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
b = []
i = 0
until n == i
    if i % 2 == 0
        b << a[i]
    else
        b.unshift(a[i])
    end
    i += 1
end
if n % 2 == 0
    puts b.join(" ")
else
    puts b.reverse.join(" ")
end
