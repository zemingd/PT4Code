n = gets.to_i
a = gets.split.map(&:to_i)
def comb2 n
    return n * (n - 1) / 2
end
res = []
countmemo = Hash.new

n.times { |i|
    ans = 0
    ban = a[i]
    anu = a.uniq
    nanu = anu.size
    if a.size == nanu then
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
    res << ans
    countmemo.clear
}

puts res
