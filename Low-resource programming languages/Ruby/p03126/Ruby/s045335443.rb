ary = Array.new
while line = $stdin.gets
ary << line.chomp.split
end

N = ary[0][0]
M = ary[0][1]
ary.delete_at(0)
ipai = Array.new
ary.map{|item|
    item.delete_at(0)
}
ary.each{|item|
    item.each{|m|
        ipai.push(m)}
}
kai = 0
M.to_i.times{|m|
    if N.to_i == ipai.count(m.to_i+1) then
        kai = kai + 1
    end
}
print kai