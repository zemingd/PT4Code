n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
ans = 0

n.times do |i|
    if a[i] <= b[i]
        ans += a[i]
        b[i] -= a[i]
    else
        ans += b[i]
        a[i] -= b[i]
    end
    
    if a[i+1] <= b[i]
        ans += a[i+1]
        a[i+1] = 0
    else
        ans += b[i]
        a[i+1] -= b[i]
    end
end
    
puts ans