def check(hs, h, n)
    n.times do |i|
        return 0 if hs[i] > h
    end
    return 1
end

def test
    n = gets.to_i
    hs = gets.split(" ").map(&:to_i)
    ans = 0
    n.times do |i|
        ans += check(hs, hs[i], i)
    end
    ans
end

puts test