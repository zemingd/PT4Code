a, b = gets.split.map(&:to_i)
ans = 0
a.upto(b) do |i|
    s = i.to_s
    if s == s.reverse
        ans += 1
    end
end
p ans