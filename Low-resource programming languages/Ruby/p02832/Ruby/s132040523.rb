N = gets.to_i
a = gets.split.map &:to_i

ans = 0
idx = 1
a.each do |ai|
    if ai != idx
        ans += 1
    else
        idx += 1
    end
end
p ans < N ? ans : -1