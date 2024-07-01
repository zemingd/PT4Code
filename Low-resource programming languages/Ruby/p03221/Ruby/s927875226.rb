n, m = gets.split.map(&:to_i)

lst = []
n.times do
    lst << []
end

hh = {}
m.times do |i|
    pk, y = gets.split.map(&:to_i)
    pk -= 1
    lst[pk] << y
    hh[y] = i+1
end

ans = {}
lst.size.times do |i|
    lst[i].sort!
    lst[i].size.times do |j|
        ans[hh[lst[i][j]]] = sprintf("%06d%06d", i+1, j+1)
    end
end

ans = ans.to_a.sort!
ans.each do |s|
    puts s[1]
end
