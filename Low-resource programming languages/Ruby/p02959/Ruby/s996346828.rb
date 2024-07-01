n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
ans = 0
n.times do |i|
    c = (a[i] < b[i] ? a[i] : b[i])
    ans += c
    a[i] -= c
    b[i] -= c
    c = (a[i+1] < b[i] ? a[i+1] : b[i])
    ans += c
    a[i+1] -= c
end
puts ans