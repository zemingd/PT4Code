n = gets.to_i
cn = {}
sp = []

n.times do |i|
    s, p = gets.strip.split
    cn[s] = true
    sp << [i + 1, s, p.to_i]
end

sp.sort!{ |a,b| b[2] <=> a[2] }   # sort with p

cn.keys.sort.each do |c|
    sp.each do |i, s, p|
        if s == c then
            puts i
        end
    end
end
