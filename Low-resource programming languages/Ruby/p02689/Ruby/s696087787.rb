n,m = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
result = 0
m.times do |i|
    a,b = gets.split.map(&:to_i)
    if h[a-1] <= h[b-1]
        result++
    end
    if h[a-1] >= h[b-1]
        result++
    end
end
puts result