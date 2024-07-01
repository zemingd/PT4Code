n, m = gets.split.map(&:to_i)

nlist = []
plist = []
llist = []

n.times{nlist.push([]); plist.push([])}

m.times do
    a, b = gets.split.map(&:to_i)
    nlist[a-1].push(b)
    plist[a-1].push(0)
    llist.push(a-1)
end

n.times do |i|
    nlist[i].length.times do |j|
        min = nlist[i].index(nlist[i].min)
        plist[i][min] = j+1
        nlist[i][min] = 1000000
    end
end


m.times do
    tmp = llist.shift
    puts"#{format("%06d", tmp+1)}#{format("%06d", plist[tmp].shift)}" 
end


