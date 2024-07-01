N = gets.to_i
Ps = gets.strip.split(nil).map(&:to_i)
Qs = gets.strip.split(nil).map(&:to_i)
#PsとQsは配列として格納した
Pt = (1..N).to_a
mx = Pt.permutation.to_a
a = mx.index(Ps)
b = mx.index(Qs)
puts (a-b).abs