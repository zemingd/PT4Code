n = gets.to_i
a = gets.chomp.split
b = gets.chomp.split
n.times do |i|
    a[i] = a[i].to_i
    b[i] = b[i].to_i
end
a[n] = a[n].to_i

monsters = 0
n.times do |i|
    if a[n-i] <= b[n-i-1]
        monsters += a[n-i]
        if a[n-i-1] <= b[n-i-1] - a[n-i]
            monsters += a[n-i-1]
            a[n-i-1] = 0
        else
            monsters += b[n-i-1] - a[n-i]
            a[n-i-1] -= b[n-i-1] - a[n-i]
        end
        a[n-i] = 0
    else
        monsters += b[n-i-1]
        a[n-i] -= b[n-i-1]
    end
end

puts monsters