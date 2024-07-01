n = gets.to_i
h = gets.split.map(&:to_i)

prev = 10**9 + 1
cnt = 0
ans = 0
for i in 0...n
    cur = h[n-1-i]
    
    if cur >= prev
        cnt += 1
        ans = [ans, cnt].max
    else
        cnt = 0
    end

    # p "#{cur} #{prev} #{cnt} #{ans}" 

    prev = cur
end

puts ans