N,M=gets.split.map(&:to_i)
ms = []
M.times do
    k,*ss=gets.split.map(&:to_i)
    m = 0
    ss.each do |s|
        m += 1 << (s-1)
    end
    ms << m
end
*ps=gets.split.map(&:to_i)
mps = ms.zip(ps)

def bit_count(n)
    (0..N-1).to_a.count {|i| n[i] == 1}
end

count = 0
0.upto(2**N-1) do |i|
    count += 1 if mps.all? {|m,p| bit_count(m&i) % 2 == p }
end

puts count