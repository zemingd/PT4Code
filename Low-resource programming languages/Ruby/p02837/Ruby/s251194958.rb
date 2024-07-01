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
ret = 0
(0..(2**N-1)).each do |bits|
    honests = []
    unkinds = []
    (1..N).each do |n|
        if bits % 2 == 0
            honests.push(n)
        else
            unkinds.push(n)
        end
        bits/=2
    end
    r = honests.length
    next if r <= ret
    all_honests = honests.map {|h| HONESTS[h] }.flatten.uniq
    all_unkinds = honests.map {|u| UNKINDS[u] }.flatten.uniq
    if (all_honests & all_unkinds).empty? && all_honests.length == honests.length
        ret = r
    end
end
puts ret
