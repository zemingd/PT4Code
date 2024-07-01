N,M=gets.split.map(&:to_i)
ms = M.times.map {
    k,*ss=gets.split.map(&:to_i)
    ss.inject(0) { |m,s| m += 1 << (s-1) }
}
*ps = gets.split.map(&:to_i)
mps = ms.zip(ps)

def bit_count(n)
    (0..N-1).count {|i| n[i] == 1}
end

puts (0..2**N-1).count {|i|
    mps.all? {|m,p| bit_count(m&i) % 2 == p }
}