# n = 3, m = 2, l = 3
#     1 3
# a = 2 2
#     3 1

#     1 3 5
# b = 2 4 6

#         c00 ... c02
# a * b =
#         c20 ... c22

#       2
# c22 = Σ a2kbk2
#     k = 1
#     = a21b12 + a22b22
#     = (2 * 3) + (2 * 4)
#     = 14

require 'matrix'

n, m, l = gets.split.map(&:to_i)
ary1 = []
ary2 = []

n.times do
  ary1 << gets.split.map(&:to_i)
end

m.times do
  ary2 << gets.split.map(&:to_i)
end

ma = Matrix[*ary1]
mb = Matrix.rows(ary2)
mc = ma * mb

mc.row_vectors.each{ |row| puts row.to_a.join("\s") }