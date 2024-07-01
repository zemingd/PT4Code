require "matrix"
n, m, l = gets.split.map(&:to_i)
ary1, ary2 = [], []
n.times{ary1<<gets.split.map(&:to_i)}
m.times{ary2<<gets.split.map(&:to_i)}
ma = Matrix[*ary1]
mb = Matrix.rows(ary2)
(ma * mb).row_vectors.each{|z| puts z.to_a.join("\s")}