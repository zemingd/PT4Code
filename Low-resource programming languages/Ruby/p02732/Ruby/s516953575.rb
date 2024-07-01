n = gets.to_i
a = gets.split.map(&:to_i)
def comb2 n
    return n * (n - 1) / 2
end
res = []
memo = Hash.new
countmemo = Hash.new

n.times { |i|
    ban = a[i]
    if memo[ban] != nil then
        res << memo[ban]
        next
    end
    ans = 0
    anu = a.uniq
    nanu = anu.size
    if a.size == nanu then
        memo[ban] = 0
        res << 0
        next
    end
    for c in anu do
        if countmemo[c] != nil then
            nn = countmemo[c]
        else
            nn = (c != ban) ? a.count(c) : a.count(c)-1
            countmemo[c] = nn
        end

        if nn >= 2 then
            ans += comb2(nn)
        end
    end
    memo[ban] = ans
    res << ans
    countmemo.clear
}

puts res
