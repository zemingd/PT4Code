a = $stdin.gets.chomp
b = $stdin.gets.chomp
t = $stdin.gets.chomp

ap, av = a.split(/ +/)
bp, bv = b.split(/ +/)

ap = ap.to_i
av = av.to_i
bp = bp.to_i
bv = bv.to_i

o = (bp - ap).abs
d = ((bv - av) * t).abs

puts d >= o ? 'YES' : 'NO'