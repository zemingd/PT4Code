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

if av != bv
  tt = (bp - ap).to_f / (av - bv).to_f
  puts tt > 0 && tt <= t ? 'YES' : 'NO'
else
  puts 'NO'
end