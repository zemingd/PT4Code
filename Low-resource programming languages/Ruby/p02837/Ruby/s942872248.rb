N=gets.to_i
HONESTS={}
UNKINDS={}
(1..N).each do |n|
    honests = [n]
    unkinds = []
    a=gets.to_i
    a.times do
        x,y=gets.chomp.split(" ").map(&:to_i)
        if y == 1
            honests.push(x)
        else
            unkinds.push(x)
        end
    end
    HONESTS[n] = honests
    UNKINDS[n] = unkinds
end
(1..N).each do |n|
    honests = HONESTS[n]
    plus = HONESTS[n]
    while !plus.empty? do
        next_plus = []
        plus.map {|h| HONESTS[h] }.flatten.uniq.each do |h|
            next_plus.push(h) if !honests.include?(h)
        end
        honests.concat(next_plus)
        plus = next_plus
    end
    HONESTS[n] = honests
end

all = (1..N).to_a
unkinds = []
(1..N).each do |n|
    if !(HONESTS[n] & UNKINDS[n]).empty?
        all.delete(n)
        unkinds.push(n)
    end
end

def calc(honests, unkinds, unknowns)
    return honests.length if unknowns.empty?
    ret = honests.length
    unknowns.each do |n|
        honests_by_n = HONESTS[n]
        unkinds_by_n = UNKINDS[n]
        if honests.all? { |h| !unkinds_by_n.include?(h) } && unkinds.all? { |u| !honests_by_n.include?(u) }
            next_unkown = unknowns.dup
            next_unkown.delete(n)
            r = calc(
                honests.dup.concat(honests_by_n).uniq,
                unkinds.dup.concat(unkinds_by_n).uniq,
                next_unkown
            )
            ret = r if r > ret
        end
    end
    return ret
end

puts calc([],unkinds,all)
