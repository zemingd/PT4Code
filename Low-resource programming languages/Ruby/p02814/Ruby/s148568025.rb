def solve(lscm,m)
    # least semi common multiple
    return ( m / lscm + 1 ) / 2 

end

n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

b = a.map do |k|
    
    res = 0
    while k.even?
        k /= 2
        res += 1
    end
    # p res
end
# p a
# p b
ans = 0
if b.uniq.size == 1
    lscm = a.map{|k| k/2}.inject(:lcm)
    # p lscm
    # p a
    # p b
    ans = solve(lscm, m)
end

puts ans



# a/2 * (2p+1)
