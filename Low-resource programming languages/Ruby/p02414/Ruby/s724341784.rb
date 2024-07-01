require 'matrix'

n, m, = gets.split.map(&:to_i)

a = n.times.map do
      gets.split.map(&:to_i)
    end

b = m.times.map do
      gets.split.map(&:to_i)
    end

ma = Matrix.rows(a)
mb = Matrix.rows(b)
mc = ma * mb

puts mc.to_a.map {|r| r.join ' ' }.join ?\n

