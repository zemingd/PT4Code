n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

ans = 0
pre = 0
n.times do |i|
    if a[i] > b[i] + pre then
        ans += b[i] + pre
        pre = 0
    else
        ans += a[i]
        pre = (a[i] > pre ? b[i] + pre - a[i] : b[i])
    end
end

puts ans + (a[n] > pre ? pre : a[n])