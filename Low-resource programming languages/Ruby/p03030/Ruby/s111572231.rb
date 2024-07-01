n = gets.strip.to_i
a =[]
i = 1
n.times do
    s, p = gets.strip.split
    p = p.to_i
    a.push({i: i, s: s, p: p})
    i += 1
end
a.sort{|a, b|
    (a[:s] <=> b[:s]).nonzero? ||
    b[:p] <=> a[:p]
}.map{|a| puts a[:i]}