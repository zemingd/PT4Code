N = gets.to_i
a = gets.split(" ").map(&:to_i).sort
b = Array.new(a[-1] + 1, true)
ans = 0

(N - 1).times do |i|
    next if b[i] == false
    v = a[i] * 2
    while v <= a[-1] do
        b[v] = false
        v += a[i]
    end
    b[a[i]] = false if a[i] == a[i + 1]
end

a.each do |x|
    ans += 1 if b[x] ==true
end
puts ans