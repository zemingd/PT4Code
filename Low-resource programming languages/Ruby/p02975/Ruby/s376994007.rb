n = gets.to_i
a = gets.split.map(&:to_i)
b = Hash.new(0)
n.times do |i|
    b[a[i]] += 1
end
c = b.keys.sort
ans = false
if c.size == 3 && c[0] == (c[1]^c[2])
    if b[c[0]] == b[c[1]] && b[c[1]] == b[c[2]]
        ans = true
    end
end
if c.size == 2
    if c[0] == 0 && b[0]*2 == b[c[1]]
        ans = true
    end
end
if c.size == 1 && c[0] == 0
    ans = true
end
puts (ans ? "Yes" : "No")