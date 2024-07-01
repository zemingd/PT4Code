def gen01(acc,n,c)
    if n == 0
        return acc
    else
        gen01(acc + c.to_s, n - 1, (c+1) % 2 )
    end
end

s = gets.chomp
w = gen01("",s.size,0)
b = gen01("",s.size,1)
wc = (s.to_i(2) ^ w.to_i(2)).to_s(2).count "1"
wb = (s.to_i(2) ^ b.to_i(2)).to_s(2).count "1"
puts [wc,wb].min
