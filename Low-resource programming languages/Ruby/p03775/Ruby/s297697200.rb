n = gets.to_i
ans = n.to_s.size
hi = 10 ** ans
(1..((n**0.5).ceil)).each do |d|
    break if(d >= hi)
    if(n % d == 0)
        ans = (n/d).ceil.to_s.size
        hi = 10**ans
    end
end
p ans