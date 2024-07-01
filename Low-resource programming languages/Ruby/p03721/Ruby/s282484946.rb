#x, y, a, b, c = gets.split.map(&:to_i)

n, k = gets.split.map(&:to_i)

cnt = Array.new(10**5 + 1, 0)

n.times do 
    a, b = gets.split.map(&:to_i)
    cnt[a] += b
end

sum = 0
for i in 1..10**5
    sum += cnt[i]
    if sum >= k
        puts i
        exit
    end
end