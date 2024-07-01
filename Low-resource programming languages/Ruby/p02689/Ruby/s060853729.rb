N, M = gets.split.map(&:to_i)
H = gets.split.map(&:to_i)

ok = Array.new(N, true)
M.times do 
    a, b = gets.split.map(&:to_i)
    a -= 1
    b -= 1
    if H[a] >= H[b]
        ok[b] = false
    end
    if H[a] <= H[b]
        ok[a] = false
    end
end

ans = 0
ok.each do |a|
    ans += 1 if a
end

puts ans