n = gets.to_i
h = gets.split.map(&:to_i)

cnt = 0
ans = 0
n.times do |i|
    if i+1 < n and h[i] >= h[i+1]
        cnt += 1
    else
        ans = cnt if ans < cnt
        cnt = 0
    end
end

puts ans