n = gets.to_i
h = gets.split.map(&:to_i)
h << h.last + 1

count = 0
ans = 0
n.times do |i| 
    if h[i] >= h[i+1] then
        count += 1
    else
        ans = count if ans < count
        count = 0
    end
end

puts ans