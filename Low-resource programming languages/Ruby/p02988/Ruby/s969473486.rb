t = gets.to_i - 2
data = gets.split
data = data.map(&:to_i)
ans = 0
a = 2
t.times do
    if data[a-1].between?(data[a-2],data[a]) == true || data[a-1].between?(data[a],data[a-2])
        ans += 1
    end
    a += 1
end
puts ans