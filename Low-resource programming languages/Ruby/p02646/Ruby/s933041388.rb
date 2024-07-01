a = $stdin.gets.chomp
b = $stdin.gets.chomp
t = $stdin.gets.chomp

ap, av = a.split(/ +/)
bp, bv = b.split(/ +/)

ap = ap.to_i
av = av.to_i
bp = bp.to_i
bv = bv.to_i
t = t.to_i

ap2 = ap + av * t
bp2 = bp + bv * t

puts (ap - bp) * (bp2 - ap2) >= 0 ? 'YES' : 'NO'