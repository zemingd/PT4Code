require 'matrix'


n, m, _ = gets.split.map(&:to_i)

a = n.times.map do
      gets.split.map(&:to_i)
    end

b = m.times.map do
      gets.split.map(&:to_i)
    end

ma = Matrix.rows(a)
mb = Matrix.rows(b)
mc = ma * mb

mc.row_vectors.each do{|row| puts row.to_a.join("\s")}
