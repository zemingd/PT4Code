n = gets.chomp.to_i
spn_arr = n.times.map { |i| gets.chomp.split(' ') + [i + 1] }
sorted = spn_arr.sort do |lhs, rhs|
    ls, lp = lhs
    rs, rp = rhs
    (ls != rs) ? (ls < rs ? 0 : 1) : (rp.to_i - lp.to_i)
end

sorted.each do |s, pt, n|
    puts n
end
